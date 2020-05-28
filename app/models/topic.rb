class Topic < ApplicationRecord
  # Validations
  validates :title, presence: true

  # Table Relationships
  has_many :blogs
end
