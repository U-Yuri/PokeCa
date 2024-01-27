class CreateCardInDecks < ActiveRecord::Migration[7.0]
  def change
    create_table :card_in_decks do |t|

      t.timestamps
    end
  end
end
