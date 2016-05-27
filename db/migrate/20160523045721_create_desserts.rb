class CreateDesserts < ActiveRecord::Migration
  def change
    create_table :desserts do |t|
      t.string :dish
      t.string :price
      t.string :sweet_or_salty
      t.string :image_url

      t.timestamps null: false
    end
  end
end
