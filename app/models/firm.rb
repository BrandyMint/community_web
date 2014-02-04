class Firm < ActiveRecord::Base
  has_many :discounts, :dependent => :destroy
  has_and_belongs_to_many :places

  validates :name, presence: true
end
