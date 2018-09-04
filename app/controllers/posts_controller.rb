class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice: "El post fue publicado con éxito"
    else
      render :new
    end
  end

  def show
  end

  private
    def post_params
      params.require(:post).permit(:title, :description)
    end

end
