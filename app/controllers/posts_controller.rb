class PostsController < ApplicationController
  def new
    @post_form = PostForm.new
  end

  def create
    @post_form = PostForm.new(post_form_params)
    if @post_form.valid?
      @post_form.save
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

  def post_form_params
    params.require(:post_form).permit(:title, :genre, :detail, :tagname, images: []).merge(user_id: current_user.id)
  end
end
