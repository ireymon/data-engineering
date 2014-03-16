class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.integer :customer_id
      t.integer :product_id
      t.integer :file_upload_id

      t.timestamps
    end
    add_index :orders, :customer_id
    add_index :orders, :product_id
    add_index :orders, :file_upload_id
  end
end
