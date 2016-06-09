class TrailsController < ApplicationController
  # Admin only
  def new
  end

  # Admin only
  def create
  end

  def index
    @trails = Trail.all
    render 'index'
  end

  def show
  end

  # Admin only
  def edit
  end
end
