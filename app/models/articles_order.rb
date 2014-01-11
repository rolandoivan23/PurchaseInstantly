class ArticlesOrder < ActiveRecord::Base
  attr_accessible :article_id, :order_id, :cantidad
  belongs_to :article
end
