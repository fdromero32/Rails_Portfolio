class Blog < ApplicationRecord
  # enum
  enum status: { draft: 0, published: 1 }

  # Friendly edit
  extend FriendlyId
  friendly_id :title, use: :slugged

  # validations
  validates :title, :body, presence: true

  #Table Relationships
  belongs_to :topic, optional: true

end
