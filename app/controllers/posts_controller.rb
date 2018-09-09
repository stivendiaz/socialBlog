class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.save

  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.update(params[:id], post_params)
  end
  def destroy
    post = Post.find(params[:id])
    post.destroy

    redirect_to posts_path#, notice: "El post fue eliminado con éxito"
  end





  private
  def post_params
    params.require(:post).permit(:title, :description)
  end

end
