class CreateSuggests < ActiveRecord::Migration[5.0]
  def change
    create_table :suggests do |t|
      t.integer :user_id
      t.text :content
      t.string :picture
      t.integer :category_id
      t.boolean :status

      t.timestamps
    end
  end
end
