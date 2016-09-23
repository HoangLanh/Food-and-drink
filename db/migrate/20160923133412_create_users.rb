class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :avatar
      t.integer :role
      t.integer :phone_number
      t.string :coin
      t.string :address

      t.timestamps
    end
  end
end
