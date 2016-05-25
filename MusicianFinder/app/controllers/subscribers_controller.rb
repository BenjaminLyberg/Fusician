class SubscribersController < ApplicationController
    
    before_filter :authenticate_user!
    
    def new
    end
    
    def create
        
        token = params[:stripeToken]
        
        customer = Stripe::Customer.create(
            card: token,
            plan: 11,
            email: current_user.email
            )
        
        current_user.subscribed = true
        current_user.stripeid = customer.id
        current_user.save
        
        flash[:success] = "Congratulations! You are now a Premium Fusician!"
        
        redirect_to root_path
        
    end
end
