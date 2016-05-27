class CreateEntrees < ActiveRecord::Migration
  def change
    create_table :entrees do |t|
      t.string :dish
      t.string :price
      t.string :spicy
      t.string :image_url

      t.timestamps null: false
    end
  end
end
