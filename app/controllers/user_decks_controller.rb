class UserDecksController < ApplicationController

    def create
        user_deck = UserDeck.create(userdeck_params)

        render json: {message: "Your Deck has been successfully shared!"}
    end

    private

    def userdeck_params
        params.require(:user_deck).permit(:user_id, :deck_id)
    end
end
