class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :username
      t.integer :password
      t.string :firstname
      t.string :lastname
      t.string :email

      t.timestamps null: false
    end
  end
end
