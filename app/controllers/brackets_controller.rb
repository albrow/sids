class BracketsController < ApplicationController

	before_filter :authenticate_user!

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
		respond_to do |format|
	    format.html  # index.html.erb
	    format.json  { 
				@bracket = Bracket.create_from_json params[:bracket]
				current_user.brackets << @bracket
				current_user.save
				render :text => "true"
	    }
	  end
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
