class PostsController < ApplicationController

  def index
    @posts = Post.all
  end
 
  def new
    @post = Post.new
    @post.images.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to root_path
  end
  
  def show
    set_post
  end

  private
  def post_params
    params.require(:post).permit(:title, :text, images_attributes: :image_url).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
