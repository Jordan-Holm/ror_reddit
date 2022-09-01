Rails.application.routes.draw do
  # root - only rails, define the home page, but don't need since we are using react

  # routes - a way to have react communicate / do
  #   CRUD actions to rails, communicating from front end to back
  # backend as api, all of our controllers are in an api folder
  
  # this will point from react to somewhere in controller
  namespace :api do
    # this is where all of our routes will be

    # manually
      # http verb, url, to: 'controller#action', as: 'nickname'
    # get '/subs', to: 'subs#index'
    # get '/subs/:id', to 'subs#show'
    # post '/subs', to: 'subs#create'
    # put '/subs/:id', to: 'subs#update'
    # delete '/sub/:id', to: 'subsb#destroy'
    #:id - place holder for the actual id value
      # custom routes - outside of the crud actions
        # get '/url', to: 'controller#action'
        # get 'ordered-subs', to: 'subs#osubs'

    #rails g way
    # resources :name of controllor
    #only handles the main CRUD actions
    resources :subs do
      resources :topics
    end

    #model with a parent and child then we need to do a "a do block"
      #but only do two levels deep
    # resources :parent1 do
    #   resources :child2
    # end

    # resources :child2 do
    #   resources child:3
    # end

    # to view the routes
      # in terminal - bundle exec rails routes
      # recommends - first run server - bundle exec rails s -p 3001
        # go to the url of http://localhost:3001/rails/info/routes

  end
end
