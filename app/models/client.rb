class Client < ActiveRecord::Base
  attr_accessible :apellido_materno, :apellido_paterno, :calle, :ciudad_id, :email, :estado_id, :nombre, :numero_exterior, :numero_interior
  has_many :orders
  belongs_to :user
  accepts_nested_attributes_for :user
end
