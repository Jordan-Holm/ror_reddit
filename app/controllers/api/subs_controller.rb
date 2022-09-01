class Api::SubsController < ApplicationController
    # controllers are traffic directors for data
    # define our backend actions, 

    #fat models skinny controllers, all CRUD actions should be in controller, else would be in model
    # actions - functions you can do in an app
        #index - see all objects in the dp
        #show - see a single object, pass id
        #new - form, store in memory
        #create - take the info from the form and create in the db
        #update - id, take the info from the form to do an update in db
        #edit - form,id, stores in memory, willl do in react
        #destroy - id, find thhe object and delete in the db
    #on our react on rails app
        #index
        #show
        #create
        #update
        #destroy

    # callbacks - trigger logic, doing it before an action or after or skip
        # before_action => 
        # after_action =>
        # skip_before_action =>
        # skip_after_action =>

    # Controller should return one of these three things html, xml, or json, or an action that does
    
    # all controllers will look similiar, convention over configuration
    # controllers follow a pattern

    #pattern
        #to follow the pattern follow the plaralness, capital or not
        # replace thhe model name with thhe actual model name
        # def index
        #     @model_names = Model_name.all
        #     render json: @model_names
        # end
    # OR
        # render json: Modelo_names.all

        # def show
        #     @model_name = Model_name.find(params[:id])
        #     render json: @model_name
        # end

        # def create
        #     @model_name = Model_name.new(model_name_params)

            # if @model_name.save
            #     render json: @model_name
            # else
                # give you an error message and a 422 code
                # render json: { errors: @model_name.errors }, status: unprecessable_entity
            #end
        # end

        # def update
        #     @model_name = Model_name.find(params[:id])

        #     if @model_name.update(model_name_params)
        #     #    render json: @model_name
        #     # else
        #         # give you an error message and a 422 code
        #         # render json: { errors: @model_name.errors }, status: unprecessable_entity
        #     end
        # end

        # def destroy
        #     @model_name = Model_name.find(params[:id])
        #     @model_name.destroy
        #     render json: { message: 'something deleted' }

        #     OR
        #     Model_name.find(params[:id]).destroy

        # private
        #     def model_name_params
        #         params.require(:model_name).permit(:attr, :attr2)
        #     end

            #controller validation - make sure that the data coming in is the right format

    def index
        render json: Sub.all
    end

    def show
        @sub = Sub.find(params[:id])
        render json: @sub
    end

    def create
        @sub = Sub.new(sub_params)

        if @sub.save
            render json: @sub
        else 
            render json: { erros: @sub.errors }, status: unprecessable_entity
        end
    end

    def update
        @sub = Sub.find(params[:id])

        if @sub.update(sub_params)
            render json: @model_name
        else
            render json: { errors: @model_name.errors}, status: unprecessable_entity
        end
    end

    def destroy
        @sub = Sub.find(params[:id])
        @sub.destroy
        render json: { message: 'Sub deleted' }

        # or
        # Sub.find(params[:id]).destroy
        # render json: { message: 'Sub deleted' }
    end

    private
    # {sub: { title: 'food'} } format permitted
    # makes sure to make the validations
    # sql injection prevention
        # { sub: { title: 'SELECT * FROM CC'} }
    #doing it thhis way will take to literal
    #will thihnk that is a string
        def sub_params
            params.require(:sub).permit(:title)
        end
end 
