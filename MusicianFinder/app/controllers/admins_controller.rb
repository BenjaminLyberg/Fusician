class AdminsController < ApplicationController
    
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
        @user = User.find(params[:user_id])
        current_user.friend_request(@user)
        flash[:success] = "Requested to connect with #{@user.username}!"
        redirect_to :back
    end
    
    def acceptFriend
        @user = User.find(params[:user_id])
        current_user.accept_request(@user)
        flash[:success] = "You are now connected to #{@user.username}!"
        redirect_to :back
    end
    
    def upvote
        @user = User.find(params[:user_id])
        @user.upvote_by current_admin
        redirect_to :back
    end
end