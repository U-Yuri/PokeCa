class Deck < ApplicationRecord
  has_many :card_in_decks, foreign_key: :deck_id
  belongs_to :user, class_name: 'User', foreign_key: :user_id
end
