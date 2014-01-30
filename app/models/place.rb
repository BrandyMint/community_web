class Place < ActiveRecord::Base
  belongs_to :city
  has_and_belongs_to_many :discounts

  scope :by_city, ->(city) { where(city: city) }

  validates :name, presence: true, uniqueness: true
  validates :position, presence: true, uniqueness: true
end
