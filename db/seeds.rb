city = City.create name: I18n.t('default_city'), position: '56.133725,47.233418'
City.create name: 'Казань', position: '55.8005556,49.1055556'
firm1 = Firm.create name: 'Firm1'
firm2 = Firm.create name: 'Firm2'
category = Category.create name: 'Category1'

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
].each_with_index do |position, index|
  firm = index > 4 ? firm2 : firm1
  Place.create name: "Place#{index+1}", position: position, city: city, firms: [firm]
end

firm1.discounts.create subject: 'Supersale!', description: 'Sale 50%', kind: 0, start_at: Time.now, finish_at: Time.now+1.year, categories: [category]
firm2.discounts.create subject: 'Superdiscount!', description: 'Discount 99%', kind: 1, start_at: Time.now, categories: [category]
