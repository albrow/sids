class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
	def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.find_for_facebook_oauth(request.env["omniauth.auth"], current_user)

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
    	session_data = request.env["omniauth.auth"]
    	session_data.delete :extra #prevent cookie overflow
      session["devise.facebook_data"] = session_data
      redirect_to new_user_registration_url
    end
  end
end