class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :no_double_dipping
  before_action :no_double_dipping, only: :homepage

  def current_user
      User.find_by_id(session[:user_id])
  end

  def logged_in?
      if current_user
      else
        render json {
            message: "nah bro"
        }
      end
  end

  def no_double_dipping
      if current_user
          render json {
              message: "you're already logged in!!"
          }
      end
  end

end
