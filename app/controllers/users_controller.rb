class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params

    if @user.save
      flash[:notice]= "Thanks for creating an account"
      session[:user_id] = @user.id
      redirect_to dashboard_url
    else
      render 'new'
    end
  end

  def show
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:username, :firstname, :lastname, :email, :password, :password_confirmation)
  end
end