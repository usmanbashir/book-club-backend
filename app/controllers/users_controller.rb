class UsersController < ApplicationController
    def index
        @users = User.all

        render json: @users
    end

    def show
        @user = User.find(params[:id])

        render json: @user
    end

    def new
        @user = User.new

        render json: @user
    end

    def create
        User.create(params.require(:user).permit(:username, :firstname, :lastname, :password))
    
        render json: @user
    end

    def edit
        @user = User.find(params[:id])

        render json: @user
    end

    def update
        @user = User.find(params[:id])
        @user.update(params.require(:user).permit(:username, :firstname, :lastname, :password))
        render json: @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy

        render json: @user
    end
end
