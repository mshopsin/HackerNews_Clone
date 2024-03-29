class UsersController < ApplicationController


  def new
    @user = User.new
    3.times { @user.emails.build }
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:confirmation] = 'User created!'
      redirect_to posts_url
    else
      flash[:error] = "Please try again."
      render :new
    end
  end

  def edit
  end

  def index
  end

  def destroy
  end

  def update

  end

  def show
    @user = User.find(params[:id])
    @karma = Upvote.where("user_id = ?", @user.id).count

  end

end
