class Robot < ApplicationRecord
  belongs_to :trainer
  belongs_to :medal_colection
  belongs_to :robot_personality

  has_many :chassis_types
  has_many :general_abilities
  has_many :general_parts
end
