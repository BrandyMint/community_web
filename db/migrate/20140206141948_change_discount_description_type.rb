class ChangeDiscountDescriptionType < ActiveRecord::Migration
  def change
    change_column :discounts, :description, 'text USING CAST(description AS text)'
  end
end
