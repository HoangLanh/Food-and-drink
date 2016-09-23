class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image
      t.float :price
      t.string :category_id
      t.float :rate_core
      t.string :quantity
      t.string :integer

      t.timestamps
    end
  end
end
