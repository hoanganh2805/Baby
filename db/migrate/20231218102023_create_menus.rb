class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.string :dishes
      t.integer :price
      t.string :ingredients
      t.references :supplier, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.text :discription
      t.boolean :status

      t.timestamps
    end
  end
end
