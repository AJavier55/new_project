class WholesalersController < ApplicationController
    before_action :find_wholesaler, only: [:show, :edit, :update, :destroy]
    
    def index
        @wholesalers = Wholesaler.all
    end

    def show
    end

    def new
        @wholesaler = Wholesaler.new
        5.times{@wholesaler.wholesaler_products.build}
    end

    def create
        @wholesaler = Wholesaler.create(wholesaler_params)
        byebug
        if @wholesaler.valid? 
        redirect_to wholesaler_path(@wholesaler)
        else 
            flash[:my_errors] = @wholesaler.errors.full_messages  
            redirect_to new_wholesaler_path  
        end
    end

    def edit
    end

    def update
        if @wholesaler.update(wholesaler_params)
        redirect_to wholesaler_path(@wholesaler)
        else
            flash[:my_errors] = @wholesaler.errors.full_messages  
            redirect_to edit_wholesaler_path  
        end
    end

    def destroy
        @wholesaler.destroy
        redirect_to wholesaler_path
    end

    private

    def wholesaler_params
        params.require(:wholesaler).permit(:name, :location, :occupation, wholesaler_products_attributes: [:product_id])
    end

    def find_wholesaler
        @wholesaler = Wholesaler.find(params[:id])
    end

end
