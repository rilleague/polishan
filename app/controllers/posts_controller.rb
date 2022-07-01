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

  def beauty_page
    @beautyposts = Post.where(genre: 1)
  end

  def trouble_page
    @troubleposts = Post.where(genre: 2)
  end


  private 

  def post_params
    params.require(:post).permit(:title, :detail, :genre, images: []).merge(user_id: current_user.id)
  end
end
