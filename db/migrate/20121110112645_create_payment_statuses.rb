class CreatePaymentStatuses < ActiveRecord::Migration
  def change
    create_table :payment_statuses do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
