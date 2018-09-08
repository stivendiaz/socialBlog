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
    if @post.save
      redirect_to posts_path, notice: "El post fue publicado con éxito"
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    if post.update(post_params)
      redirect_to posts_path, notice: "El post ha sido modificado con éxito"
    else
      render :edit
    end
  end
  def destroy
    post = Post.find(params[:id])
    post.destroy

    redirect_to posts_path, notice: "El post fue eliminado con éxito"
  end





  private
  def post_params
    params.require(:post).permit(:title, :description)
  end

end
