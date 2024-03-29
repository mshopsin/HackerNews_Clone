class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def show
    @post = Post.find(params[:post_id])
    @commentOrg = Comment.find(params[:id])

    @comment = Comment.new
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.author_id = current_user.id
    @comment.post_id = params[:post_id]
    @comment.reply_id = params[:reply_id]
    @comment.save
    redirect_to posts_url
  end

  def edit
  end

  def reply
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def index
    @post = Post.find(params[:post_id])
    @comments = Comment.order(:reply_id).find_all_by_post_id(params[:post_id])

  end

  def destroy
  end

  def update
  end
end
