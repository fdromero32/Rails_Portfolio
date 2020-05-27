class Skill < ApplicationRecord
  #Validations
  validates :title, :percent_utilized, presence: true
end
