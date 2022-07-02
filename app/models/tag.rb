class Tag < ApplicationRecord
  has_many   :posts, through: :post_tags
  has_many   :post_tags
  validates  :tagname, uniqueness: true
end
