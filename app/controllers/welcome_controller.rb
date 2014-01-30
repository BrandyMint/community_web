class WelcomeController < ApplicationController
  def index
    @places = Place.by_city current_city
  end
end
