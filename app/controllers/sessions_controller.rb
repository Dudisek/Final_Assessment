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
			render "new"
		end
	end
end


      # it "sets session user_id and redirect to bookmarks" do
      #   expect(User).to receive(:find_by).with(email: user.email) { user_mock }
      #   expect(user_mock).to receive(:authenticate).with("wrong password") { false }

      #   post :create, params
        
      #   expect(session[:user_id]).to be_nil
      #   expect(response).to render_template(:new)