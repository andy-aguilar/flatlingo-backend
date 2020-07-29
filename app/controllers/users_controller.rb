class UsersController < ApplicationController
<<<<<<< HEAD
    def index
        users = User.all
        render json: users, include: :decks
    end
    
=======

    def index
        users = User.all
        render json: users, include: [:decks]
    end

>>>>>>> user-show
    def show
        user = User.find(params[:id])
        render json: user, include: [:decks]
    end


end
