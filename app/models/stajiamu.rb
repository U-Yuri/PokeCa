class Stajiamu < ApplicationRecord
  has_many :card_in_decks, foreign_key: :stajiamu_id
end
