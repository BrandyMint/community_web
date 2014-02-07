class RemoveDiscountFromCategory < ActiveRecord::Migration
  def change
    remove_column :categories, :discount_id
  end
end
