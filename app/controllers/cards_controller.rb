class CardsController < ApplicationController
    before_action :find_card, only: [:edit, :update, :destroy]
    def create
        card = Card.create(card_params)
        render json: card
    end 

    def edit 
        render json: card
    end 

    def update
        card.update(card_params)
        render json: card
    end 

    def destroy
        card.destroy
        render json: {}
    end

    private 
    
    def card_params 
        params.require(:card).permit(:front_word, :back_definition, :back_notes, :understanding, :understanding_num, :deck_id)
    end 

    def find_card
        card = Card.find(params[:id])
    end
end
