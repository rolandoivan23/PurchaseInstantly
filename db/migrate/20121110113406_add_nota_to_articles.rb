class AddNotaToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :nota, :text
  end
end
