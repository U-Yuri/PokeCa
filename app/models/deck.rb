class Deck < ApplicationRecord
  has_many :card_in_decks, foreign_key: :deck_id
end
