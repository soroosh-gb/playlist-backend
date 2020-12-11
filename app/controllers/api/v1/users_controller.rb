class Api::V1::UsersController < ApplicationController
    # skip_before_action :authorized, only: [:create, :index]
    before_action :authorized, except: [:create, :index]
    
    def index
        @users = User.all
        render json: @users
    end

    #  def profile
    # render json: { user: UserSerializer.new(current_user) }, status: :accepted
# end
    # def home
    #     # byebug
    #     render json: { user: UserSerializer.new(current_user) }, status: :accepted
    # end

    def home
        render json: { user: current_user }, statu: :accepted
    end

    # def create
    #     @user = User.create(user_params)
    #     # byebug
    #     if @user.valid?
    #         # @token = encode_token(user_id: @user.id)
    #         # render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    #         render json: { user: UserSerializer.new(@user)}, status: :created
    #     else
    #         render json: { error: 'failed to create user' }, status: :not_acceptable

    #     end        
    # end

    def create
        @user = User.create(user_params)
        # byebug
        if @user.valid?
          @token = encode_token(user_id: @user.id)
        #   render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        render json: { user: @user, jwt: @token }, status: :created
        else
          render json: { message: @user.errors.full_messages }, status: :not_acceptable
        end
      end


    def users
        render json: current_user.users, status: :accepted
      end

    
    # private
    # def user_params
    #     params.require(:user).permit(:username, :password)
    # end

    private

    def user_params
        params.require(:user).permit!
    end
end