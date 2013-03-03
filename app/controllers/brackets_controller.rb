class BracketsController < ApplicationController

	def index
		# list all the brackets for the current user
		@brackets = current_user.brackets
		respond_to do |format|
	    format.html  # index.html.erb
	    format.json  { render :json => @brackets }
	  end
	end

	def new
		# render a new bracket page
	end

	def create
		# will create a new bracket for the user
	end

	def show
		@bracket = Bracket.find(params[:id])
		respond_to do |format|
	    format.html  # index.html.erb
	    format.json  { render :json => @bracket }
	  end
	end

	def edit
		# render an edit page
	end

	def update
		# will update a users bracket
	end

	def destroy
		# delete the bracket (remove it from database)
	end
end
