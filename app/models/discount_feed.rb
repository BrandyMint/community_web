class DiscountFeed < ActiveRecord::Base
  belongs_to :discount
  has_and_belongs_to_many :cities

  scope :by_city, ->(city) { joins(:cities).where(:cities => { :id => city.id }, published: true) }
end
