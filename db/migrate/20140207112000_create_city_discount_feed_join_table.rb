class CreateCityDiscountFeedJoinTable < ActiveRecord::Migration
  def change
    create_join_table :cities, :discount_feeds do |t|
      # t.index [:city_id, :discount_feed_id]
      # t.index [:discount_feed_id, :city_id]
    end
  end
end
