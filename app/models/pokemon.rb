class Pokemon < ApplicationRecord
  belongs_to :skill, class_name: 'Skill', foreign_key: :skill1_id
  belongs_to :skill, class_name: 'Skill', foreign_key: :skill2_id
  belongs_to :skill, class_name: 'Tokusei', foreign_key: :tokusei_id
end
