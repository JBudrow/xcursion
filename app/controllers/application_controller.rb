class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :logged_user

  def logged_user
    user_id = session['user_id']
    if user_id
      User.find_by(id: user_id)
    end
  end

  def authorize!
    unless logged_user
      flash[:notice] = 'Must be logged in'
      redirect_to root_url
    end
  end
end
