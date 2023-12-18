class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.integer :phonenumber
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
