class ProvincesController < ApplicationController
  def index
    @provinces = Province.all
    render 'index'
  end

  def show
    @province = Province.find(params['id'])
    render 'show'
  end
end
