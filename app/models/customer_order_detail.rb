class CustomerOrderDetail < ActiveRecord::Base
  belongs_to :customer_order
  belongs_to :warehouse
  belongs_to :product
  belongs_to :product_unit
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
end
