class Support < ApplicationRecord
  has_many :card_in_decks, foreign_key: :support_id
end
