class HomeController < ApplicationController

def index
	if current_user
		redirect_to account_path
	end
end

def about
end

end
