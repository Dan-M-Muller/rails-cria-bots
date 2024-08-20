class MedalColection < ApplicationRecord
  has_many :medals
  has_many :robots
end
