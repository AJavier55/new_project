class CreateWholesalers < ActiveRecord::Migration[6.0]
  def change
    create_table :wholesalers do |t|
      t.string :name
      t.string :location
      t.string :occupation

      t.timestamps
    end
  end
end
