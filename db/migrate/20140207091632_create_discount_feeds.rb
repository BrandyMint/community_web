class CreateDiscountFeeds < ActiveRecord::Migration
  def change
    create_table :discount_feeds do |t|
      t.references :discount, index: true
      t.boolean :published

      t.timestamps
    end
  end
end
