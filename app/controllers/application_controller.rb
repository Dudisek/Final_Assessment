class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include ApplicationHelper

  protect_from_forgery with: :exception
  helper_method :user

  private

	def user
	  @current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

end
