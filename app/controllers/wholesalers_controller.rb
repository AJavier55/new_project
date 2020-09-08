class WholesalersController < ApplicationController
    before_action :find_wholesaler, only: [:show, :edit, :update, :destroy]
    
    def index
        @wholesalers = Wholesaler.all
    end

    def show
    end

    def new
        @wholesaler = Wholesaler.new
    end

    def create
        @wholesaler = Wholesaler.create(wholesaler_params)
        redirect_to wholesaler_path(@wholesaler)
    end

    def edit
    end

    def update
        @wholesaler.update(wholesaler_params)
        redirect_to wholesaler_path(@wholesaler)
    end

    def destroy
        @wholesaler.destroy
        redirect_to wholesaler_path
    end

    private

    def wholesaler_params
        params.require(:wholesaler).permit(:name, :location, :occupation)
    end

    def find_wholesaler
        @wholesaler = Wholesaler.find(params[:id])
    end

end
