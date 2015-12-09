class UsersController < ApplicationController
	# page for posting signup information
	def new
	end

	#Create new user
	def create
		user = User.new(user_params)
	    if user.save
	      session[:user_id] = user.id
	      redirect_to '/'
	    else
	      redirect_to '/signup'
	    end

	end

	private
		#gets params from the form in the page
	  def user_params
	    params.require(:user).permit(:name, :email, :password, :password_confirmation)
	  end

end
