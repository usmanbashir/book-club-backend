class CurrentUserController < ApplicationController
  # protect_from_forgery with: :null_session
  # before_action :authenticate_user!

  def index
    render json: UserSerializer.new(current_user).serializable_hash[:data][:attributes], status: :ok
  end

  def show
    @users = User.find(params[:id])

    render json: @users
  end

  
end