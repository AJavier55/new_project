class Review < ApplicationRecord
belongs_to :restaurant
belongs_to :wholesaler

validates :star_rating, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
end
