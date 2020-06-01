class Portfolio < ApplicationRecord
  has_many :technologies
# validations
  validates :title, :body, :main_image, :thumb_image, presence: true

# custom scope
# first define class method
  def self.react
    where(subtitle: 'React')
  end

# scope and lambda
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

# automatically runs when initialization happens.
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "https://via.placeholder.com/600x400"
    self.thumb_image ||= "https://via.placeholder.com/250x250"
  end
end
