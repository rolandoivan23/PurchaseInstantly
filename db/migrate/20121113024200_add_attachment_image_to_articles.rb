class AddAttachmentImageToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.has_attached_file :imagen
    end
  end

  def self.down
    drop_attached_file :articles, :imagen
  end
end
