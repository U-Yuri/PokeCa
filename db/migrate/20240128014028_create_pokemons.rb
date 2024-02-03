class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :sinka, null: false
      t.string :name, null: false
      t.string :special
      t.integer :hp, null: false
      t.string :zokusei, null: false
      t.references :tokusei, foreign_key: true
      t.integer :skill1_id, index: true, null: false
      t.integer :skill2_id, index: true

      t.timestamps
    end
    add_foreign_key :pokemons, :skills, column: :skill1_id
    add_foreign_key :pokemons, :skills, column: :skill2_id
  end
end