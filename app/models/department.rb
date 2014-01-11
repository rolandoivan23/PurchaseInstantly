class Department < ActiveRecord::Base
  attr_accessible :descripcion, :nombre
  has_many :articles
end
