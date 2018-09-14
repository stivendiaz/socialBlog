class CommentsController < ApplicationController
require 'pry'
  def create
    post = Post.find(params[:post_id])
    redirect_to post , notice: "El comentario fue publicado con éxito"
  end

  private
    def comments_params
      params.require(:comment).permit(:body).merge(user: current_user)
    end
end
