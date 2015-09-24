class CommentsController < ApplicationController
  def create
    @blog = Blog.find(params[:blog_id])
    @comment = Comment.new(comment_params)
    @comment.blog = @blog
    @comment.user = current_user

    if @comment.save
      redirect_to @blog, notice: 'Comment saved!'
    else
      redirect_to @blog, alert: 'There was an error saving your comment'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:comment)
  end
end
