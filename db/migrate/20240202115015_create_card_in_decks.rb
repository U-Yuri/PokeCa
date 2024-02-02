class CreateCardInDecks < ActiveRecord::Migration[7.0]
  def change
    create_table :card_in_decks do |t|
      t.references :pokemon, foreign_key: true
      t.references :item, foreign_key: true
      t.references :support, foreign_key: true
      t.references :pokemon_no_item, foreign_key: true
      t.references :stajiamu, foreign_key: true
      t.references :energy, foreign_key: true

      t.timestamps
    end
  end
end
