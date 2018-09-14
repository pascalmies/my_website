class BlogsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index,  :show]
  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
