class CreatePokemonNoItems < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemon_no_items do |t|
      t.string :name
      t.text :koka

      t.timestamps
    end
  end
end
