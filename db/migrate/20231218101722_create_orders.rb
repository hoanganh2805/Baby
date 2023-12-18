class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :orderid
      t.string :customername
      t.integer :numberofseat
      t.boolean :status

      t.timestamps
    end
  end
end
