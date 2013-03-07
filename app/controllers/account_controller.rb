class AccountController < ApplicationController

  before_filter :authenticate_user!

  def myaccount
  	@user = current_user
  end
end
