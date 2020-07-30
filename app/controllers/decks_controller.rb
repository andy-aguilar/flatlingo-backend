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
        deck = Deck.create(deck_params)
        render json: deck
    end

    def destroy
        deck= Deck.find(params[:id])
        deck.destroy

        render json: {}
    end

    private
    def deck_params
        params.require(:deck).permit(:name, :user_id)
    end
end
