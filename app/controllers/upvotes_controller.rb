class UpvotesController < ApplicationController
  def create
  end



  def new

    @comment = Comment.find(params[:format])
    @post = Post.find(@comment.post_id)
    @upvote = Upvote.new( :comment_id => @comment.id, :user_id => current_user.id )
    @upvote.save
    redirect_to post_comments_url(@post)
  end
end