class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]
    
    def index
        @users = User.all
        render json: @users
    end

    def profile
        render json: { user: current_user }, status: :accepted
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            render json: { user: UserSerializer.new(@user), jwt: token}, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable

        end        
    end

    def users
        render json: current_user.users, status: :accepted
      end

    
    private
    def user_params
        params.require(:user).permit(:username, :password_digest)
    end

end
