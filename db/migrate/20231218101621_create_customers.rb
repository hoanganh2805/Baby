class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :ID
      t.date :DateofBirth
      t.integer :phone
      t.string :email
      t.string :level

      t.timestamps
    end
  end
end
