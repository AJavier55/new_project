require "bcrypt"
class Restaurant < ApplicationRecord
    has_many :reviews
    has_many :wholesalers, through: :reviews

    has_secure_password 

validates :name, :location, uniqueness: true 
validates :name, :cuisine, :owner, :location, presence: true 
# validates :name, inclusion: {in: Restaurant.all}


# def fave_wholesalers
#     self.reviews.each do |review|
#         if review.star_rating >= 3
#             review.star_rating
#         end
#     end

# end

def find_by_cuisine(cuisine)
    Restaurant.all.filter do |restaurant|
        restaurant.cuisine == cuisine
        if !self 
            rest.name
        end
    end
end


   


end
