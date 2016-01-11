class SessionsController < ApplicationController
  include SessionsHelper


	def new

	end

	def create
		if user = User.find_by(email: params[:session][:email])
	  user = User.authenticate(params[:session][:email], params[:session][:password])
		  if user
		    session[:user_id] = user.id
		    redirect_to bookmarks_path
		  else
		    render "new"
		  end
		else
		end
	end
end

