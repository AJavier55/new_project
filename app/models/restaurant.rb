require "bcrypt"
class Restaurant < ApplicationRecord
    has_many :reviews
    has_many :wholesalers, through: :reviews

    has_secure_password 
end
