class Order < ActiveRecord::Base
  attr_accessible :client_id, :fecha_entrega, :fecha_liberacion_pedido, :monto_total, :order_status_id, :payment_status_id
  belongs_to :client
  belongs_to :order_status
  belongs_to :payment_status
  has_many :articles_orders_rows, :class_name => "ArticlesOrder", :foreign_key => "order_id"
  has_and_belongs_to_many :articles
end
