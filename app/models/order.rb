class Order < ActiveRecord::Base
  attr_accessible :bill_address, :bill_city, :bill_country, :bill_first_name, :bill_last_name, :bill_state, :bill_zip, :email, :item_amount, :item_desc, :item_name, :item_rate, :order_date, :order_no, :payment_type, :phone, :po_num, :product_code, :product_options, :promo_code, :qty, :ship_address, :ship_city, :ship_cost, :ship_country, :ship_first_name, :ship_last_name, :ship_method, :ship_state, :ship_zip, :store, :tax_total, :total_order, :unit_weight
end
