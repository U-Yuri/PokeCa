class Pokemon < ApplicationRecord
  belongs_to :skill1, class_name: 'Skill', foreign_key: :skill1_id
  belongs_to :skill2, class_name: 'Skill', foreign_key: :skill2_id, optional: true
  belongs_to :tokusei
end
