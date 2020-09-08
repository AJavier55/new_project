class Product < ApplicationRecord
has_many :wholesaler_products 
has_many :wholesalers, through: :wholesaler_products


end
