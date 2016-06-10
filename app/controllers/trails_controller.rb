class TrailsController < ApplicationController
  before_action :authorize!, only: [:new, :create, :edit]

  # Admin only
  def new
    render 'new'
  end

  # Admin only
  def create
    @trail = Trail.new trail_params
  end

  def index
    @trails = Trail.all
    render 'index'
  end

  def show
    @trails = Trail.find params['id']
    render 'show'
  end

  # Admin only
  def edit
  end

  private
  def trail_params
    params.permit(:lat, :lon, :distance, :name,
                  :image, :description, :direction)
  end
end
