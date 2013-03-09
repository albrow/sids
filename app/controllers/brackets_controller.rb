class BracketsController < ApplicationController
  before_filter :authenticate_user!, except: [:edit, :update, :destroy]
  before_filter :verify_bracket_user, only: [:edit, :update, :destroy]


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
      format.json do
        @bracket = Bracket.create(name: params[:name])
        @bracket.create_predictions(params[:bracket])
        current_user.brackets << @bracket
        current_user.save
        render json: @bracket
      end
    end
  end

  def show
    @bracket = Bracket.includes(predictions: :winner).find(params[:id])
    @games = Game.round(0).includes(:team1, :team2)

    @regions = {}
    ['south', 'west', 'east', 'midwest'].map do |region|
      @regions[region] = [@games.select {|game| game.region == region}]
      1.upto(5) do |round|
        predictions = @bracket.predictions.select do |prediction|
          prediction.region == region and prediction.round_id == round
        end
        @regions[region] << predictions
      end
    end

    # --- FIX THIS ----
    @south_east = @bracket.region(:south_east)
    @west_midwest = @bracket.region(:west_midwest)
    # -----------------

    @championship = @bracket.region(:championship)

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
    @bracket.destroy
    redirect_to account_path
  end


  private

  def verify_bracket_user
    authenticate_user!
    @bracket = Bracket.find(params[:id])
    if @bracket.user != current_user
      render nothing: true, status: :forbidden
    end
  end

end
