class SessionsController < ApplicationController
  include SessionsHelper


	def new

	end

	def create
		user = User.find_by_email(params[:session][:email])
  	if user.authenticate(params[:session][:password])
  	
		  session[:user_id] = user.id
		  redirect_to bookmarks_path

		else
			session[:user_id] = nil
			render "new"
		end
	end
end

