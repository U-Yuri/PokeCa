class AddPokemonNoItemsToCardInDeck < ActiveRecord::Migration[7.0]
  def change
    add_reference :card_in_decks, :pokemon_no_items, foreign_key: true
  end
end
