class WholesalerProduct < ApplicationRecord
    belongs_to :product 
    belongs_to :wholesaler 

end
