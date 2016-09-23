class CreateOders < ActiveRecord::Migration[5.0]
  def change
    create_table :oders do |t|
      t.integer :user_id
      t.float :total_price
      t.integer :status
      t.string :shipping_address

      t.timestamps
    end
  end
end
