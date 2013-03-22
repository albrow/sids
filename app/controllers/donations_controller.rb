class DonationsController < ApplicationController

	def new
	end

	def create
	  # Amount in cents
	  @amt = params[:payment_amt]

	  if @amt.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil
	  	@amt = 500
	  end

		email = "anonymous@mail.com"
	  if current_user
			email = current_user.email if !current_user.email.blank?
	  end

	  customer = Stripe::Customer.create(
	    :email => email,
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

	  # flash[:success] = "Thank You for your contribution!"
	  # redirect_to '/account'

	end


end