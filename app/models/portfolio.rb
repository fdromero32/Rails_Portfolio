class Portfolio < ApplicationRecord
# validations
validates :title, :body, :main_image, :thumb_image, presence: true

# custom scope
# first define class method
  def self.react
    where(subtitle: 'React')
  end

# scope and lambda
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }
end
