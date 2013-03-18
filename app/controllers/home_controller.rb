class HomeController < ApplicationController

def index
	if current_user
		@brackets = current_user.brackets
    if @brackets.empty?
      flash[:notice] = "You don't have any brackets yet. <a href='/brackets/new'>Create One!</a>".html_safe
    end
    respond_to do |format|
      format.html  { render 'brackets/index'}
      format.json  { render :json => @brackets }
    end
	else
		render 'landing'
	end
end

def about
end

def landing

end

end
