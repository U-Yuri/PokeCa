class PokemonNoItem < ApplicationRecord
  has_many :card_in_decks, foreign_key: :pokemon_no_item_id
end
