class Restaurant < ApplicationRecord
    has_many :reviews
    has_many :wholesalers, through: :reviews


end
