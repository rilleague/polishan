class PostForm
  include ActiveModel::Model
  attr_accessor :title, :images, :detail, :genre, :tagname, :user_id, :post_id, :tag_id

  with_options presence: true do
    validates :title, length: { maximum: 50 }
    validates :genre
    validates :detail
    validates :user_id
  end

  def save
    post = Post.create(title: title, genre: genre, detail: detail, user_id: user_id ,images: images)

    tag = Tag.where(tagname: tagname).first_or_initialize
    tag.save
    
    PostTag.create(post_id: post.id, tag_id: tag.id)
  end
end
