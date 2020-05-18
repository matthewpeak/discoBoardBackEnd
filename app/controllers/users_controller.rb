class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users, except: [:created_at, :updated_at]
    end
    def new
        @user = User.new
        render json: @users, except: [:created_at, :updated_at]
    end
    def create
        @user = User.create(user_strong_params)
        render json: @users, except: [:created_at, :updated_at]
    end
    def show
        @user = User.find_by(id: params[:id])
        render json: @user, except: [:created_at, :updated_at]
    end
    private
    def user_strong_params
    params.require(:user).permit(:user_id, :name,:password)
    end
end
