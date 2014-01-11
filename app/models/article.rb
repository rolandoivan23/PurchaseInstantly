class Article < ActiveRecord::Base
  attr_accessible :department_id, :marca, :nombre, :precio_por_unidad_de_venta, :retail_unit_id, :stock, :imagen
  belongs_to :department
  belongs_to :retail_unit
  has_and_belongs_to_many :orders

  has_attached_file :imagen, :styles => { :thumb => "100>x100>", :medium => "450>x450>" }
end
