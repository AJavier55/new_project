class SessionsController < ApplicationController
    skip_before_action :authorized, only: [:new, :login]
    
    
    def new
    end


    def login
    @restaurant = Restaurant.find_by(name: params[:session][:name])
        if @restaurant && @restaurant.authenticate(params[:session][:password])
          session[:restaurant_id] = @restaurant.id
          redirect_to restaurant_path(@restaurant)
        else 
          flash[:errors] = "Username or Password Incorrect"
          redirect_to new_login_path
        end 
      end 

end
