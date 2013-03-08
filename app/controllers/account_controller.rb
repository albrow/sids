class AccountController < ApplicationController

  before_filter :authenticate_user!

  def myaccount
  	@user = current_user
  	# list all the brackets for the current user
	@brackets = current_user.brackets
	respond_to do |format|
	    format.html  # index.html.erb
	    format.json  { render :json => @brackets }
    end
  end
end
