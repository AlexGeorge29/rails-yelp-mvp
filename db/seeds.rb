puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  # resto 1
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '+2214 6777',
    category:        'belgian'
  },
  # resto 2
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  '11111111111',
    category:        'italian'
  },
  # resto 3
  {
    name:         'Pasta King',
    address:      'Napoli',
    phone_number:  '2222222222222',
    category:        'italian'
  },
  # resto 4
  {
    name:         'Coccinan',
    address:      '92240, Malak',
    phone_number:  '3333333333333',
    category:        'chinese'
  },
  # resto 5
  {
    name:         "La Tour d'argent",
    address:      'Ile saint Louis, Paris 5',
    phone_number:  '0146427170',
    category:        'french'
  }
]

restaurants_attributes.each do |hash|
  Restaurant.create!(hash)
end

puts 'Finished!'
