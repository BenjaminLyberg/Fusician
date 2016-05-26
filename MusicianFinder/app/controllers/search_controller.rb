class SearchController < ApplicationController
  def index
      
      @cities = ['Oslo, Norway', 'Bergen, Norway', 'Stavanger, Norway', 'Trondheim, Norway', 'Bodø, Norway', 'Stockholm, Sweden', 'Göteborg, Sweden']
      
     
        
    end
    
    def results
         if params[:search]
             @users = User.search(params[:search]).order("subscribed DESC")
        else
            @users = User.all.order('created_at DESC')
        end
    end
end
