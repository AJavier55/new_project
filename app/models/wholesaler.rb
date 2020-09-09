class Wholesaler < ApplicationRecord
    has_many :reviews
    has_many :restaurants, through: :reviews 
    has_many :wholesaler_products
    has_many :products, through: :wholesaler_products


    validates :name, :location, uniqueness: true
    validates :name, :location, :occupation, presence: true 
end
