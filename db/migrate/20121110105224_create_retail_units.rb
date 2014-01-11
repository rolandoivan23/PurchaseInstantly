class CreateRetailUnits < ActiveRecord::Migration
  def change
    create_table :retail_units do |t|
      t.string :nombre
      t.text :descripcion
      t.string :tipo

      t.timestamps
    end
  end
end
