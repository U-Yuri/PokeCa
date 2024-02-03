class Tokusei < ApplicationRecord
  has_many :pokemons, foreign_key: :tokusei_id
end
