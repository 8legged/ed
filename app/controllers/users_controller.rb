class UsersController < ApplicationController

  def index
    @user = User.order("username")
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params

    if @user.save
      flash[:notice]= "Account created!"
      session[:user_id] = @user.id
      redirect_to dashboard_url
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @lessons = @user.lessons
  end

  private

  def user_params
    params.require(:user).permit(:username, :firstname, :lastname, :email, :password, :password_confirmation)
  end
end