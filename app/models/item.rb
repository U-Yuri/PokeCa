class Item < ApplicationRecord
  has_many :card_in_decks, foreign_key: :item_id
end
