class Api::V1::UsersController < ApplicationController

  skip_before_action :authorized, only: [:create]
  
  def profile
    render json: { user: UserSerializer.new(current_user), message: 'success' }
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    render json: {user: UserSerializer.new(current_user), message: 'success'}
  end

  def index
    users = User.all
    render json: users
  end

  def create
    user = User.new(user_params)
    user.admin = false
    if user.save
      token = encode_token(user_id: user.id)
      render json: { user: UserSerializer.new(user), jwt: token, message: 'success' }
    else
      render json: { message: 'failed to create user' }
    end
  end

  private

    def user_params
      params.require(:user).permit(
        :email, :password, :password_confirmation, 
        :firstname, :lastname, :bday, :photo_url,
        :address1, :address2, :city, :state, :zip, :phone
      )
    end


end
