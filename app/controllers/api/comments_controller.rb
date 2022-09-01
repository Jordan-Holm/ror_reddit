class Api::CommentsController < ApplicationController
  # model name is comment
  before_action :set_topic

  before_action :set_comment, only: [:show, :update, :destroy]

  def index
    render json: @topic.comments
  end

  def show

    render json: @comment
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      render json: @comment
    else
      render json: { errors: @comment.errors }, status: :unprocessable_entity
  end

  def update

    if @comment.update(comment_params)
      render json: @comment
    else
      render json: { errors: @comment.errors }, status: :unprocessable_entity
  end

  def destroy
    @comment_params.destroy

    render json: { message: 'comment deleted' }
  end

  private
    
    def set_topic
      @topic = Topic.find(params[:topic_id])
    end

    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params  
      params.require(:comment).permit(:body, :author)
    end
end
