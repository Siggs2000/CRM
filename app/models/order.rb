class Order < ActiveRecord::Base
  attr_accessible :bill_address, :bill_city, :bill_country, :bill_first_name, :bill_last_name, :bill_state, :bill_zip, :email, :item_amount, :item_desc, :item_name, :item_rate, :order_date, :order_no, :payment_type, :phone, :po_num, :product_code, :product_options, :promo_code, :qty, :ship_address, :ship_city, :ship_cost, :ship_country, :ship_first_name, :ship_last_name, :ship_method, :ship_state, :ship_zip, :store, :tax_total, :total_order, :unit_weight

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
		  	@a = row.to_hash
		    puts @a
		    order = Order.create!
		    order.update_attributes(:order_no => @a["ORDER_NO"], :store => @a["STORE_NAME"], 
		    	:order_date => @a["TXN_DT"], :payment_type => @a["PAYMENTMETHOD_REF"], :phone => @a["PHONE"],
		    	:email => @a["EMAIL"], :bill_first_name => @a["BADDR_FIRST_NM"],
		    	:bill_last_name => @a["BADDR_LAST_NM"], :bill_address => @a["BADDR_LINE1"], 
		    	:bill_city => @a["BADDR_CITY"], :bill_state => @a["BADDR_CITY"], :bill_state => @a["BADDR_STATE"],
		    	:bill_zip => @a["BADDR_ZIP"], :bill_country => @a["BADDR_COUNTRY"], 
		    	:ship_first_name => @a["SADDR_FIRST_NM"], :ship_last_name => @a["SADDR_LAST_NM"],
		    	:ship_address => @a["SADDR_LINE1"], :ship_city => @a["SADDR_CITY"], 
		    	:ship_zip => @a["SADDR_ZIP"], :ship_country => @a["SADDR_COUNTRY"],
		    	:po_num => @a["PO_NUMBER"], :ship_method => @a["SHIP_METHOD_REF"],
		    	:tax_total => @a["TAX1_TOTAL"], :ship_cost => @a["TOTAL_SHIP_COST"],
		    	:total_order => @a["TOTAL_ORDER_AMT"], :item_name => @a["ITEM_NAME"],
		    	:item_desc => @a["ITEM_DESC"], :qty => @a["ITEM_QUANTITY"], :item_rate => @a["ITEM_RATE"], 
		    	:item_amount => @a["ITEM_AMOUNT"], :unit_weight => @a["ITEM_UNIT_WEIGHT_LBS"], 
		    	:product_options => @a["PRODUCT_WITH_OPTIONS"], :product_code => @a["PRODUCT_CODE"],
		    	:promo_code => @a["PROMO_CODE"])
	  	end
	end
end
