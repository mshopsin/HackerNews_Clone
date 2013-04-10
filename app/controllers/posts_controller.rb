class PostsController < ApplicationController
  def new
    @post = Post.new
    @post.comments.build
  end

  def edit
  end

  def create

    @post = Post.new(params[:post])
    @post.author_id = current_user.id
    @post.comments.first.author_id = current_user.id
    if @post.save
      redirect_to posts_url
    else
      render :new
    end
  end

  def index
    @posts = Post.all
  end

  def show

  end

  def destroy
  end

  def update
  end
end
