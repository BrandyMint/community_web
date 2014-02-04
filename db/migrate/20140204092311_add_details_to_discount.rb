class AddDetailsToDiscount < ActiveRecord::Migration
  def change
    add_column :discounts, :kind_cd, :integer
    add_reference :discounts, :firm, index: true
    add_reference :discounts, :category, index: true
    add_column :discounts, :start_at, :datetime
    add_column :discounts, :finish_at, :datetime
    rename_column :discounts, :name, :subject
    rename_column :discounts, :text, :description
    drop_join_table :discounts, :places
  end
end
