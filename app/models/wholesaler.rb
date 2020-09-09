class Wholesaler < ApplicationRecord
    has_many :reviews
    has_many :restaurants, through: :reviews 
    has_many :wholesaler_products
    has_many :products, through: :wholesaler_products
    accepts_nested_attributes_for :products

    validates :name, :location, uniqueness: true
    validates :name, :location, :occupation, presence: true 


    def product_attributes=(product_attributes)
        product_attributes.values.each do |product_attribute|
            product = Product.find_or_create_by(product_attribute)
            self.products << product 
        end 
    end

    def prod_for_sale
        self.wholesaler_products.each do |wholesaler_products| 
            wholesaler_products.product.name
        end
    end

end
