class BracketsController < ApplicationController
  before_filter :authenticate_user!, except: [:edit, :update, :destroy, :show]
  before_filter :verify_bracket_user, only: [:edit, :update, :destroy, :show]


  def index
    # list all the brackets for the current user
    @brackets = current_user.brackets
    if @brackets.empty?
      flash[:notice] = "You don't have any brackets yet. <a href='/brackets/new'>Create One!</a>".html_safe
    end
    respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @brackets }
    end
  end

  def new
    # render a new bracket page
    if flash[:notice] = flash[:notice] = "You don't have any brackets yet. <a href='/brackets/new'>Create One!</a>".html_safe
      flash[:notice] = nil
    end
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
    require "regions" # lib/regions.rb
    @region_order = Regions::RegionsHelper.get_region_order
    @final_four_order = Regions::RegionsHelper.get_final_four_order

    @bracket = Bracket.includes(predictions: :winner).find(params[:id])
    @games = Game.round(0).includes(:team1, :team2)

    @regions = {}
    @region_order.map do |region|
      @regions[region] = []
      @regions[region] << @games.region(region)
      1.upto(4) do |round|
        predictions = @bracket.region(region).round(round)
        @regions[region] << predictions
      end
    end

    @final_four_one = @bracket.region(@final_four_order[0])
    @final_four_two = @bracket.region(@final_four_order[1])

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
    redirect_to brackets_path
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
