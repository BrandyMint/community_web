city = City.create(name: I18n.t('default_city'))
place = Place.create(name: 'Place', position: '56.156733,47.3940999', city: city)
place.discounts.create(text: 'Discount 99%')
