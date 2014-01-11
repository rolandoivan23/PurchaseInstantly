class AddCantidadToArticlesOrders < ActiveRecord::Migration
  def change
    add_column :articles_orders, :cantidad, :integer
  end
end
