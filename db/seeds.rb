city = City.create(name: I18n.t('default_city'), position: '56.156733,47.3940999')
discount = Discount.create(name: 'Superdiscount only once in whole life!', text: 'Discount 99%')

[
  '56.156733,47.3940999',
  '56.142585,47.192875',
  '56.146960,47.182968',
  '56.14078,47.229601',
  '56.141537,47.239368',
  '56.111209,47.267141',
  '56.146482,47.271077',
  '56.111191,47.270134',
  '56.125893,47.249127',
  '56.145018,47.203626'
].each_with_index do |place, index|
  place = Place.create(name: "Place#{index+1}", position: place, city: city)
  place.discounts << discount
end

