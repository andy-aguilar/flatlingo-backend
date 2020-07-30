class CardsController < ApplicationController
    def index
        cards = Card.all
        render json: cards
    end

    def create
        card = Card.create(card_params)
        render json: card
    end 

    def edit 
        card = Card.find(params[:id])
    end 

    def update
        card = Card.find(params[:id])
        card.update(card_params)
        render json: card
    end 

    def destroy
        card= Card.find(params[:id])
        card.destroy

        render json: {}
    end

    private 
    
    def card_params 
        params.require(:card).permit(:front_word, :back_definition, :back_notes, :understanding, :understanding_num, :deck_id)
    end 
end
