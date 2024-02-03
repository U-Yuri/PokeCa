class Skill < ApplicationRecord
  has_many :pokemons, foreign_key: :skill1_id
  has_many :pokemons, foreign_key: :skill2_id
end
