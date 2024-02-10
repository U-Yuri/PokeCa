class Energy < ApplicationRecord
  has_many :card_in_decks, foreign_key: :energy_id
end
