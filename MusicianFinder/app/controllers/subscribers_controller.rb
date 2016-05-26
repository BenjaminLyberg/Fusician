class SubscribersController < ApplicationController
    
    before_action :check_sub
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
    
    def check_sub
        if current_user.subscribed?
            redirect_to users_profile_path
        end
    end
end
