class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.references :user
      t.string :title
      t.date :shopping_date
      t.string :place
      t.string :item
      t.integer :item_number
      t.text :note
      t.references :template
      t.timestamps
    end
  end
end
