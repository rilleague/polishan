class Post < ApplicationRecord
  belongs_to :user
  has_many_attached :images

  with_options presence: true do
    validates :title
    validates :genre_id, numericality: { other_than: 0 }
    validates :detail
    validates :image
  end
end
