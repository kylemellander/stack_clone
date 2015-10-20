class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to posts_path, notice: 'Comment was successfully created.'
    else
      render :new
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to root_path, notice: 'Comment was successfully updated.'
    else
      render :edit
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :post_id)
  end
end
