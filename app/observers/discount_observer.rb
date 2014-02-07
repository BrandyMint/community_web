class DiscountObserver < ActiveRecord::Observer
  def after_create(discount)
    DiscountFeed.create discount: discount, cities: discount.firm.places.map{ |x| x.city }.uniq, published: true
  end

  def after_update(discount)
    feed_item = DiscountFeed.where(discount: discount).first
    if feed_item.present?
      feed_item.cities = discount.firm.places.map{ |x| x.city }.uniq
      feed_item.save
    end
  end
end