class UsersController < ApplicationController
  before_action :logged_in?, only: [:index, :show, :destroy]
  before_action :no_double_dipping, only: [:signup, :login]

  def index
    user = User.find_by(id: session[:user_id])
    render json: {
        currentUser: user
    }
  end

  def signup
    @user = User.new
    render :layout => "homepage"
  end

  def login
    @user = User.new
    render :layout => "homepage"
  end

  def show
    user = User.find_by(id: session[:user_id])
    if user
      render json: {
        user: @user
      }
    else
      render json: {
        status: 500,
        errors: ['user not found']
      }
    end
  end

  def create_session
    user = User.find_by(username: params[:session][:username])

    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      render json: {
              logged_in: true,
              username: @user.username
            }
    else
      render json: { 
          status: 401,
          errors: ['no such user', 'verify credentials and try again or signup']
          }
    end
  end

  def create
    user = User.new(user_params)
    if user.valid?
        user.save
        session[:user_id] = user.id
        render json: {
            status: :created,
            username: @user.username,
            logged_in: true
            }
    else
      render json: {
          status: 500,
          errors: @user.errors.full_messages
          }
    end
  end

  def destroy
    session[:user_id] = nil
    render json: {
        status: 200,
        logged_out: true
      }
  end


  private

  def user_params
    params.permit(:password, :password_confirmation, :username, :email)
  end


end
