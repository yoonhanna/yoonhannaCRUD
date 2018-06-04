class CommentsController < ApplicationController
  def create
    @comments = Comment.new
    @comments.content = params[:content]
    @comments.post_id = params[:post_id]
    @comments.save
    
    redirect_to "/home/index"
  end

  def destroy
    destroy_comment = Comment.find(params[:comments_id])
    destroy_comment.destroy
    
    redirect_to '/home/index'
  end
end
