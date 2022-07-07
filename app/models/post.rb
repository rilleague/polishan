class Post < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :age
  belongs_to :bodypart
  belongs_to :skin
  belongs_to :freeword


  with_options presence: true do
    validates :title, length: { maximum: 50 }
    validates :detail
    validates :user_id
    validates :genre_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :age_id, numericality: { other_than: 1, message: "can't be blank" } 
    validates :bodypart_id, numericality: { other_than: 1, message: "can't be blank" } 
  end
end
