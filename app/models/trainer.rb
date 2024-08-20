class Trainer < ApplicationRecord
  has_many :robots
  has_many :trainer_personalities
end
