class Api::V1::UsersController < ApplicationController

  skip_before_action :authorized, only: [:create]
  
  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    render json: {message: 'Success: User updated.'}

  end

  def index
    users = User.all
    render json: users
  end

  def create
    user = User.new(user_params)
    user.admin = false
    # pry
    if user.save
      token = encode_token(user_id: user.id)
      render json: { message: 'Success', user: UserSerializer.new(user), jwt: token }
    else
      render json: { message: 'failed to create user' }
    end
  end

  private

    def user_params
      params.require(:user).permit(
        :email, :password, :password_confirmation, 
        :firstname, :lastname, :bday, :photo_url
      )
    end


end
