class User < ApplicationRecord
    has_many :user_decks
    has_many :decks, through: :user_decks
    has_many :cards, through: :decks
    validates :username, uniqueness: true
    validates :email, email: true
    has_secure_password
end
