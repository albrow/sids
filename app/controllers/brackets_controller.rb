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
				@bracket.name = params[:name]
				current_user.brackets << @bracket
				current_user.save
				redirect_to "/payments/new"
	    }
	  end
	end

	def show
		@bracket = Bracket.find(params[:id])
		@south = [
				Game.region(:south).round(0),
				@bracket.region(:south).round(1),
				@bracket.region(:south).round(2),
				@bracket.region(:south).round(3),
				@bracket.region(:south).round(4)
		]
		@west = [
				Game.region(:west).round(0),
				@bracket.region(:west).round(1),
				@bracket.region(:west).round(2),
				@bracket.region(:west).round(3),
				@bracket.region(:west).round(4)
		]
		@east = [
				Game.region(:east).round(0),
				@bracket.region(:east).round(1),
				@bracket.region(:east).round(2),
				@bracket.region(:east).round(3),
				@bracket.region(:east).round(4)
		]
		@midwest = [
				Game.region(:midwest).round(0),
				@bracket.region(:midwest).round(1),
				@bracket.region(:midwest).round(2),
				@bracket.region(:midwest).round(3),
				@bracket.region(:midwest).round(4)
		]
		@regions = {
			:south => @south,
			:west => @west,
			:east => @east,
			:midwest => @midwest
		}
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
      @bracket = Bracket.find(params[:id])
      @bracket.destroy
      redirect_to account_path
    end

end
