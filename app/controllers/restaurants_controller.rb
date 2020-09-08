class RestaurantsController < ApplicationController
    before_action :find_restaurants, only: [:show, :edit, :update, :destroy]



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
    end


    private 

    def find_restaurants 
        @restaurant = Restaurant.find(params[:id])
    end

    def restaurant_params
        params.require(:restaurant).permit(:name, :owner, :location, :cuisine,  :password, :password_confirmation)
    end




end
