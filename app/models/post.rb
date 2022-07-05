class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :age
  belongs_to :bodypart
  belongs_to :skin
  belongs_to :freeword
  has_many_attached :images

  with_options presence: true do
    validates :title, length: { maximum: 50 }
    validates :genre
    validates :detail
    validates :user_id
    validates :age_id, numericality: { other_than: 1, message: "can't be blank" } 
    validates :bodypart_id, numericality: { other_than: 1, message: "can't be blank" } 
  end
end
