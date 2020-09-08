class CreateWholesalerProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :wholesaler_products do |t|
      t.integer :product_id
      t.integer :wholesaler_id

      t.timestamps
    end
  end
end
