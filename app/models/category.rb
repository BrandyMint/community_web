class Category < ActiveRecord::Base
  has_many :discounts
  has_many :firms, :through => :discounts

  validates :name, presence: true, uniqueness: true
end
