class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
    helper_method :logged_in?, :current_user, :authorized_user?, :logout!, :require_login

    def require_login
      unless logged_in?
        render json: {
          message: "You must be logged in to access this section"
        }
      end
    end

    def logged_in?
      !!session[:user_id]
    end

    def current_user
        if session[:user_id]
            @current_user = User.find_by(id: session[:user_id])
        else
            @current_user = nil
        end
    end

    def authorized_user?
       @user == current_user
     end

    def logout!
       session.clear
     end
  end
