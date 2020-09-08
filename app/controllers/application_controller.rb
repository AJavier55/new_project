class ApplicationController < ActionController::Base
    
    
    before_action :authorized

    def logged_in
      @current_restaurant = Restaurant.find_by(id: session[:restaurant_id])
    end 
  
  
    def authorized
      redirect_to new_login_path unless logged_in
    end 

end
