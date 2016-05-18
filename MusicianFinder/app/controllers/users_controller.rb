class UsersController < ApplicationController
    
    def index
        @users = User.all
    end
    
    def show
        @user = User.find(params[:id])
    end
    
    def connections 
        @user = User.find(params[:user_id])
    end
    
    def connect
    end
    
    def acceptFriend
        @user = User.find(params[:user_id])
        current_user.accept_request(@user)
        redirect_to :back
    end
    
    def upvote
        @user = User.find(params[:user_id])
        @user.upvote_by current_user
        redirect_to :back
    end
end
