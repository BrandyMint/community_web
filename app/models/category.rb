class Category < ActiveRecord::Base
  has_and_belongs_to_many :discounts
  has_many :firms, :through => :discounts

  validates :name, presence: true, uniqueness: true
end
