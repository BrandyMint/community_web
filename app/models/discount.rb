class Discount < ActiveRecord::Base
  belongs_to :firm
  has_and_belongs_to_many :categories

  as_enum :kind, sale: 0, discount: 1

  validates :subject, :start_at, :kind, presence: true
end
