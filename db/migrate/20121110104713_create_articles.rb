class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :nombre
      t.string :marca
      t.integer :department_id
      t.integer :retail_unit_id
      t.float :precio_por_unidad_de_venta
      t.integer :stock

      t.timestamps
    end
  end
end
