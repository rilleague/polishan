class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.valid?
      @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def beautypage
    @beautypages = Post.where(genre: 1)
  end

  def troublepage
    @troublepages = Post.where(genre: 2)
  end


  private 

  def post_params
    params.require(:post).permit(:title, :genre, :detail, images: []).merge(user_id: current_user.id)
  end
end
