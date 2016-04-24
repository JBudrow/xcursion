class UsersController < ApplicationController
  def new
    @user = User.new
    render 'new'
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params['id'])
  end

  private

  def user_params
    params.permit(:alias, :first_name, :last_name, :email, :password)
  end
end
