class AccountController < ApplicationController

  before_filter :authenticate_user!

  def myaccount
  	@user = current_user
    @should_notify = @user.should_notify_on_sunday
  	# list all the brackets for the current user
  	@brackets = current_user.brackets
  	respond_to do |format|
	    format.html  { render 'myaccount'}
	    format.json  { render :json => @brackets }
    end
  end

  def update_notification_prefs
    if params[:should_notify_on_sunday]
      current_user.should_notify_on_sunday = true
      current_user.save
      flash[:notice] = "Thanks! We will send you a reminder email on Sunday, March 17."
      myaccount
    else
      current_user.should_notify_on_sunday = false
      current_user.save
      flash[:notice] = "Preferences Updated! We won't be sending you any emails."
      myaccount
    end
  end


end
