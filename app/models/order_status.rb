class OrderStatus < ActiveRecord::Base
  attr_accessible :descripcion, :nombre
  has_many :orders
end
