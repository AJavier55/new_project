require "bcrypt"
class Restaurant < ApplicationRecord
    has_many :reviews
    has_many :wholesalers, through: :reviews

    has_secure_password 

validates :name, :location, uniqueness: true 
validates :name, :cuisine, :owner, :location, presence: true 
# validates :name, inclusion: {in: Restaurant.all}


def fave_wholesalers
    self.reviews.each do |review|
        review.star_rating  if review.star_rating >= 4 
    end
end

end
