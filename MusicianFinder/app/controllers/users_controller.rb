class UsersController < ApplicationController
    
    def index
        @users = User.all
        
        if params[:search]
            @users = User.search(params[:search]).order("created_at DESC")
        else
            @users = User.all.order('created_at DESC')
        end
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
        @user.upvote_by current_user
        redirect_to :back
    end
    
    def destroy
    @user = User.find(params[:id])
    @user.destroy

    if @user.destroy
        redirect_to root_url, notice: "User deleted."
    end
  end
    
end
