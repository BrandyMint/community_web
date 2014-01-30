# -*- coding: utf-8 -*-
# configures your navigation

SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    #primary.item :hotels, I18n.t("admin.menu.hotels"), root_url

    primary.dom_class = 'nav navbar-nav pull-right'

    primary.item '#cities', current_city.name do |inner|
      City.find_each do |city|
        inner.item city.id, city.name, city_path(city)
      end
    end

    # you can turn off auto highlighting for a specific level
    primary.auto_highlight = true
  end
end
