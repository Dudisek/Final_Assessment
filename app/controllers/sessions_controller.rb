class SessionsController < ApplicationController
  include SessionsHelper


	def new

	end

	def create
		if user = User.find_by(email: params[:session][:email])
	  	user = User.authenticate(user, params[:session][:password])
	  	if user
			  session[:user_id] = user.id
			  redirect_to bookmarks_path
			end
		else
			render "new"
		end
	end
end

