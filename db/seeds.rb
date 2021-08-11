# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the r ails db: seed command (or created alongside the database  with db: setup.
#
# E xamples:
#
#   movies = Movie.create( { name:  'Star Wars' },  { name:  'Lord of the Rings' }
#   Character.crea te(name:  'Luke' , movie:  movies.first
puts 'G tout kc dans la db'
Restaurant.destroy_all

la_cigale = { name: 'La Cigale', address: 'Nantes', phone_number: '0677993931', category: 'chinese' }
le_loup_le_renard_et_la_galette = {name: 'Le loup le renard et la galette', address: 'Nantes', phone_number: '0677993932', category: 'italian' }
chaiyoh = { name: 'Chaiyoh', address: 'Nantes', phone_number: '0677993933', category: 'japanese' }
chacha = { name: 'Chacha', address: 'Nantes', phone_number: '0677993934', category: 'french' }
sapio = { name: 'Sapio', address: 'Nantes', phone_number: '0677993935', category: 'belgian' }

[la_cigale, le_loup_le_renard_et_la_galette, chaiyoh, chacha, sapio].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "I created #{restaurant.name}"
end
