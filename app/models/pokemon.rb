class Pokemon < ApplicationRecord
  has_many :card_in_decks, foreign_key: :pokemon_id
  belongs_to :skill1, class_name: 'Skill', foreign_key: :skill1_id
  belongs_to :skill2, class_name: 'Skill', foreign_key: :skill2_id, optional: true
  belongs_to :tokusei, optional: true
end
