class City < ActiveRecord::Base
  has_many :places, :dependent => :destroy
  has_many :firms, :through => :places
  has_and_belongs_to_many :discount_feeds

  validates :name, :position, presence: true, uniqueness: true
end
