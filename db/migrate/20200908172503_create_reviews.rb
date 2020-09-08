class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :restaurant_id
      t.integer :wholesaler_id
      t.integer :star_rating
      t.text :written_review

      t.timestamps
    end
  end
end
