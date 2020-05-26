class Blog < ApplicationRecord

  # Friendly edit
  extend FriendlyId
  friendly_id :title, use: :slugged

end
