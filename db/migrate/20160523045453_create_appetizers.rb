class CreateAppetizers < ActiveRecord::Migration
  def change
    create_table :appetizers do |t|
      t.string :dish
      t.string :price
      t.string :spicy
      t.string :hot
      t.string :image_url

      t.timestamps null: false
    end
  end
end
