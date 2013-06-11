class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :order_no
      t.string :store
      t.date :order_date
      t.string :payment_type
      t.string :phone
      t.string :email
      t.string :bill_first_name
      t.string :bill_last_name
      t.string :bill_address
      t.string :bill_city
      t.string :bill_state
      t.integer :bill_zip
      t.string :bill_country
      t.string :ship_first_name
      t.string :ship_last_name
      t.string :ship_address
      t.string :ship_city
      t.string :ship_state
      t.integer :ship_zip
      t.string :ship_country
      t.integer :po_num
      t.string :ship_method
      t.integer :tax_total
      t.decimal :ship_cost
      t.decimal :total_order
      t.string :item_name
      t.string :item_desc
      t.integer :qty
      t.integer :item_rate
      t.integer :item_amount
      t.integer :unit_weight
      t.string :product_options
      t.string :product_code
      t.string :promo_code

      t.timestamps
    end
  end
end
