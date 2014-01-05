class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  private

  def require_user!
    if current_user.nil?
      flash[:notice] = "Sign in to see this page"
      redirect_to new_session_url
    end
  end

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end
end