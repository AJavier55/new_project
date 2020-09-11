class AddImgUrlToWholesalers < ActiveRecord::Migration[6.0]
  def change
    add_column :wholesalers, :img_url, :string
  end
end
