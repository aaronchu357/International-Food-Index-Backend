class CommentsController < ApplicationController

  def index
    comments = Comment.all
    render json: CommentSerializer.new(comments)
  end

  def create
    comment = Comment.create(comment_params)
    render json: CommentSerializer.new(comment)
  end

  def show
    comment = Comment.find(params[:id])
    render json: CommentSerializer.new(comment)
  end

  # PATCH/PUT /recipes/1
  def update
    comment = Comment.find(params[:id])
    if comment.update(comment_params)
      render json: CommentSerializer.new(comment)
    else
      render json: comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipes/1
  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
  end

  private

  def comment_params
    params.permit(:content, :rating, :user_id, :national_dish_id)
  end
  
end
