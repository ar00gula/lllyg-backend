class UsersController < ApplicationController
  before_action :require_login, only: :show

    def index
      users = User.all
      user = current_user
      render json: {
        currentUser: user
      }
    end
  
    def show
        user = User.find(params[:id])
       if user
          render json: {
            user: user
          }
        else
          render json: {
            status: 500,
            errors: ['user not found']
          }
        end
    end
    
    def create
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id
            render json: { 
              status: created,
              username: user.username,
              logged_in: true
            }
        else 
            render json: {
              status: 500,
              errors: user.errors.full_messages
            }
        end
    end
end

    private
      
      def user_params
        params.permit(:username, :email, :password, :password_confirmation)
      end
