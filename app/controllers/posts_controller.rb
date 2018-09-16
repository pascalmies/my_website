class PostsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index,  :show]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

   def create
    @post = Post.new(post_params)
    @post.author = current_user
    if @post.save
      redirect_to blog_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def post_params
    params.require(:post).permit(:title, :subtitle, :content)
  end
end
