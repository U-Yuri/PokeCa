class AddPokemonNoItemsToCardInDeck < ActiveRecord::Migration[7.0]
  def change
    add_column :card_in_decks, :card_in_deck_id, :integer
  end
end
