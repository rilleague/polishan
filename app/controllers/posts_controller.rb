class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def beautypage
    @beautypages = Post.where(genre_id: 2)
  end

  def troublepage
    @troublepages = Post.where(genre_id: 3)
  end


  private 

  def post_params
    params.require(:post).permit(:title, :detail, :genre_id, :age_id, :bodypart_id, :skin_id, :freeword_id, images: []).merge(user_id: current_user.id)
  end
end
