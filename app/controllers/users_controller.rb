class UsersController < ApplicationController
    def index
        users = User.all
        render json: users, include: :decks
    end
    
    def show
        user = User.find(params[:id])
        render json: user, include: [:decks]
    end


end
