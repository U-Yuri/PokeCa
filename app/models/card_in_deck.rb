class CardInDeck < ApplicationRecord
  belongs_to :pokemon
  belongs_to :item
  belongs_to :support
  belongs_to :pokemon_no_item
  belongs_to :stajiamu
  belongs_to :energy
end
