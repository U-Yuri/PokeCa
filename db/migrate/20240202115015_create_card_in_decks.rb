class CreateCardInDecks < ActiveRecord::Migration[7.0]
  def change
    create_table :card_in_decks do |t|
      t.references :deck, foreign_key: true, null: false
      t.references :pokemon, foreign_key: true
      t.references :item, foreign_key: true
      t.references :support, foreign_key: true
      t.references :pokemon_no_item, foreign_key: true
      t.references :stajiamu, foreign_key: true
      t.references :energy, foreign_key: true

      t.timestamps
    end

    add_foreign_key :card_in_decks, :decks, on_delete: :cascade
  end
end
