class CommentsController < ApplicationController

  def index
    comments = Comment.all
    render json: CommentSerializer.new(comments)
  end

  def create
    comment = Comment.create(comment_params)
  end

  def show
    comment = Comment.find(params[:id])
    render json: CommentSerializer.new(comment)
  end

  private
  def comment_params
    params.require(:comments).permit(:content, :rating)
  end
  
end
