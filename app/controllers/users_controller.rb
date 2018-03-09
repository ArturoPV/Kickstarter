class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(params.require(:user).permit(:fname, :lname, :age, :email, :password))
    user.save
    redirect_to initiatives_path
  end

  def edit
  @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(params.require(:user).permit(:fname, :lname, :age, :email))
    redirect_to initiatives_path
  end

  def show
      @user = User.find(params[:id])
  end

end
