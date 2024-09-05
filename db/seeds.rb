# db/seeds.rb
Restaurant.create!([
  { name: 'Epicure', address: '75008 Paris', phone_number: '1234567890', category: 'french' },
  { name: 'Sushi Samba', address: 'London', phone_number: '2345678901', category: 'japanese' },
  { name: 'La Piazza', address: 'Rome', phone_number: '3456789012', category: 'italian' },
  { name: 'Great Wall', address: 'Beijing', phone_number: '4567890123', category: 'chinese' },
  { name: 'Brussels Bistro', address: 'Brussels', phone_number: '5678901234', category: 'belgian' }
])

# Adding reviews with ratings within the new limit
epicure = Restaurant.find_by(name: 'Epicure')
epicure.reviews.create!(content: 'Amazing food!', rating: 8)
epicure.reviews.create!(content: 'Great atmosphere!', rating: 9)

sushi_samba = Restaurant.find_by(name: 'Sushi Samba')
sushi_samba.reviews.create!(content: 'Delicious sushi.', rating: 7)
sushi_samba.reviews.create!(content: 'Nice service.', rating: 6)

la_piazza = Restaurant.find_by(name: 'La Piazza')
la_piazza.reviews.create!(content: 'Best pizza in town!', rating: 10)
la_piazza.reviews.create!(content: 'Loved the pasta.', rating: 9)
