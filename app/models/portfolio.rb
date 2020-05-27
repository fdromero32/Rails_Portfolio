class Portfolio < ApplicationRecord
# validations
validates :title, :body, :main_image, :thumb_image, presence: true
end
