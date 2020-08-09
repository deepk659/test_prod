class PostsController < ApplicationController

  def index
    if params[:search].present?
     @posts = Post.where("title = ? or comment = ? or count = ?", 
      params[:search], params[:search], params[:search])
    else  
      @posts  = Post.paginate(:page => params[:page], :per_page=>5)
    end

  end
  def show
    @post = Post.find(params[:id])
  end
  def view
    @post = Post.find(params[:id])
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new
    @post.title = params[:post][:title]
    @post.comment = params[:post][:comment]
    @post.count = params[:post][:count]
    if @post.save 
      redirect_to  posts_path
    else
      render :new
    end
  end
  def edit
    @post = Post.find(params[:id])
  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to  posts_path
  end
  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      redirect_to posts_path
    else
      render :edit
    end
  end
  def testajax
    
  end

  private
   def post_params
    params.require(:post).permit(:title, :comment, :count)
   end
end
