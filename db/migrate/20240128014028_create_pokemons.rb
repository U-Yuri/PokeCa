class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :sinka
      t.string :name
      t.string :special
      t.integer :hp
      t.string :zokusei
      t.references :tokusei, foreign_key: true
      t.integer :skill1_id, index: true
      t.integer :skill2_id, index: true

      t.timestamps
    end
    add_foreign_key :pokemons, :skills, column: :skill1_id
    add_foreign_key :pokemons, :skills, column: :skill2_id
  end
end