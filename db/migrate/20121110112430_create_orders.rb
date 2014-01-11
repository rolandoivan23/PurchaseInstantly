class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :client_id
      t.integer :order_status_id
      t.float :monto_total
      t.date :fecha_entrega
      t.integer :payment_status_id
      t.date :fecha_liberacion_pedido

      t.timestamps
    end
  end
end
