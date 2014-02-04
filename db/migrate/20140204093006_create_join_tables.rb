class CreateJoinTables < ActiveRecord::Migration
  def change
    create_join_table :categories, :discounts
    create_join_table :firms, :places
  end
end
