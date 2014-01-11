class CreateArticlesOrders < ActiveRecord::Migration
  def change
    create_table :articles_orders, :id => false do |t|
      t.integer :article_id
      t.integer :order_id

      t.timestamps
    end
  end
end
