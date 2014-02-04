class City < ActiveRecord::Base
  has_many :places, :dependent => :destroy
  has_many :firms, :through => :places

  validates :name, :position, presence: true, uniqueness: true
end
