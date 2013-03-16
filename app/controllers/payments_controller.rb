class PaymentsController < ApplicationController

	before_filter :authenticate_user!

	def new
      @bracket = Bracket.find(params[:bracket_id])
	end

	def create
    @bracket = Bracket.find(params[:bracket_id])

	  # Amount in cents
	  @amt = params[:payment_amt]

	  if @amt.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil
	  	@amt = 200
	  end

      begin
        customer = Stripe::Customer.create(
                                           :email => current_user.email,
                                           :card  => params[:stripeToken]
                                           )

        charge = Stripe::Charge.create(
                                       :customer    => customer.id,
                                       :amount      => @amt,
                                       :description => 'Bracket Customer',
                                       :currency    => 'usd'
                                       )
	  rescue Stripe::CardError => e
	  	flash[:error] = e.message
      else
        @bracket.active = true
        @bracket.save!
      end

	  # flash[:success] = "Thank You for your contribution!"
	  # redirect_to '/account'

	end


end
