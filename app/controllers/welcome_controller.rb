class WelcomeController < ApplicationController
  def index
    @feed = DiscountFeed.by_city(current_city)
  end
end
