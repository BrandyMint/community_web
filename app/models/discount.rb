class Discount < ActiveRecord::Base
  belongs_to :firm
  belongs_to :category

  as_enum :kind, sale: 0, discount: 1

  validates :subject, :start_at, :kind, presence: true
end
