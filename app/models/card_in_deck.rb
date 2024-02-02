class CardInDeck < ApplicationRecord
  belongs_to :deck
  belongs_to :pokemon, optional: true
  belongs_to :item, optional: true
  belongs_to :support, optional: true
  belongs_to :pokemon_no_item, optional: true
  belongs_to :stajiamu, optional: true
  belongs_to :energy, optional: true
end
