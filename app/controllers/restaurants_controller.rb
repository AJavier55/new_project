class RestaurantsController < ApplicationController
    before_action :find_restaurants, only: [:show,:edit, :update, :destroy]
    skip_before_action :authorized, only: [:new, :create, :index]

    def index
        @restaurants = Restaurant.all 
    end

    def show
    end

    def new
        @restaurant = Restaurant.new 
    end
   
    def create
        @restaurant = Restaurant.create(restaurant_params)
            if @restaurant.valid? 
                session[:restaurant_id] = @restaurant.id  
                redirect_to restaurant_path(@restaurant)
            else 
                flash[:errors] = @restaurant.errors.full_messages
                redirect_to new_restaurant_path
            end 
    end


    def edit
    end

    def update
        if @restaurant.update(restaurant_params)
            redirect_to restaurant_path(@restaurant)
            else
                flash[:my_errors] = @restaurant.errors.full_messages  
                redirect_to edit_restaurant_path  
            end
    end

        def destroy
            @restaurant.destroy 
            redirect_to restaurants_path
        end

    private 

    def find_restaurants 
        @restaurant = Restaurant.find(params[:id])
    end

    def restaurant_params
        params.require(:restaurant).permit(:name, :owner, :location, :cuisine,  :password, :password_confirmation)
    end




end
