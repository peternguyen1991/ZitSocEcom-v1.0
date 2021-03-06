class CreateCustomerOrderDetails < ActiveRecord::Migration
  def change
    create_table :customer_order_details do |t|
      t.references :customer_order, index: true
      t.references :warehouse, index: true
      t.references :product, index: true
      t.references :product_unit, index: true
      t.integer :quanity, default: 0
      t.integer :price, default: 0
      t.integer :reduce_price, default: 0
      t.integer :reduce_percent, default: 0
      t.integer :tax, default: 0
      t.integer :subtotal, default: 0
      t.integer :subtotal_reduced, default: 0
      t.integer :subtotal_taxincl, default: 0
      t.text :note
      t.references :creator, index: true

      t.timestamps null: false
    end
    add_foreign_key :customer_order_details, :customer_orders
    add_foreign_key :customer_order_details, :warehouses
    add_foreign_key :customer_order_details, :products
    add_foreign_key :customer_order_details, :product_units
    add_foreign_key :customer_order_details, :users, column: :creator_id
  end
end
