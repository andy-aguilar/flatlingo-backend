class DecksController < ApplicationController
    def index
        decks = Deck.all
        render json: decks, include: :cards
    end

    def show
        deck = Deck.find(params[:id])
        render json: deck, include: [:cards]
    end

    def create
        deck = Deck.new(deck_params)
        user = User.find(params[:user_id])
        if deck.save
            user.decks << deck
        end
        render json: deck
    end

    def update
        deck= Deck.find(params[:id])
        deck.users.delete(User.find(params[:user_id]))

        render json: {}
    end

    private
    def deck_params
        params.require(:deck).permit(:name, :user_id)
    end
end
