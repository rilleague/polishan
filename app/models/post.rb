class Post < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  has_many :tags, through: :post_tags, dependent: :destroy
  has_many :post_tags, dependent: :destroy

  with_options presence: true do
    validates :title
    validates :detail
    validates :images
  end
end
