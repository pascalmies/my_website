class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :resume, :contact]

  def about
  end

  def resume
  end

  def contact
  end
end
