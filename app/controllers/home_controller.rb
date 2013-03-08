class HomeController < ApplicationController

def index
	if current_user
		redirect_to account_path
	else
		render 'landing'
	end
end

def about
end

def landing

end

end
