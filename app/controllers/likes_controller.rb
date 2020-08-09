class LikesController < ApplicationController

  def index
    @post = Post.find(params[:post_id])
    @likes = @post.likes
  end  
  def new
    @post = Post.find(params[:post_id])
    @like = Like.new
  end
  
  def create
    @post = Post.find(params[:post_id])
    @like = @post.likes.new(like_params)
    if @like.save
      redirect_to post_likes_path(params[:post_id])
    else
      render :new
    end
  end
  private
  def like_params
    params.require(:like).permit(:description)
  end
end
