class PaymentsController < ApplicationController

	before_filter :authenticate_user!

	def new
	end

	def create
	  # Amount in cents
	  @amt = params[:payment_amt]

	  if @amt.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil
	  	@amt = 200
	  end

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
	  redirect_to :action => "new"
	end

end
