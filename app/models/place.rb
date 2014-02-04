class Place < ActiveRecord::Base
  belongs_to :city
  has_and_belongs_to_many :firms
  has_many :discounts, :through => :firms

  scope :by_city, ->(city) { where(city: city).select(:name, :position) }

  validates :name, :position, presence: true, uniqueness: true
end
