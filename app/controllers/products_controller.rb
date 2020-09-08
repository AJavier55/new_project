class ProductsController < ApplicationController

    def index
        @products = Product.all
    end

    def show
        @product = Product.find(params[:id])
    end

    private

    def products_params
        params.require(:product).permit(:name)
    end
    
end
