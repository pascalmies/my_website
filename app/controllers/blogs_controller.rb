class BlogsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index,  :show]

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
