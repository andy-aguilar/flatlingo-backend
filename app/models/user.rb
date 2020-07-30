class User < ApplicationRecord
    has_many :decks
    has_many :cards, through: :decks
    validates :username, uniqueness: true
end
