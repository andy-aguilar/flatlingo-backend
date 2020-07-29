class DecksController < ApplicationController
    def index
        decks = Deck.all
        render json: decks, include: [:cards]
    end

    def show
        deck = Deck.find(params[:id])
        render json: deck, include: [:cards]
    end


    def create
        user = params['user_id']
        deck = Deck.create(name: params["name"], user_id: user);#  
        render json: deck, include: [:cards]

    end 

    private 

    def deckParams
        params.require(:deck).permit(:name, :user_id)
    end
end
