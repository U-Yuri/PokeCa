class Skill < ApplicationRecord
  has_many :pokemons1, class_name: 'Pokemon', foreign_key: :skill1_id
  has_many :pokemons2, class_name: 'Pokemon', foreign_key: :skill2_id
end
