class UsersController < ApplicationController
    def index
        users = User.all
        render json: users, include: :decks
    end
    
    def show
        user = User.find(params[:id])
        render json: user, include: [:decks]
    end

    def login
        user = User.find_by(username: params[:username])
        render json: user, include: [:decks]
    end

    def create
        user = User.new(user_params)
        if user.save
            render json: user, status: :created
        else 
            render json: {error: 'failed to create user'}, status: :not_acceptable
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

end
