# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


5.times do |i|
  User.create(firstname: "User#{i}",lastname: "User#{i}",email: "User#{i}@cos.cc",password: "haslohaslo", password_confirmation: "haslohaslo",admin:"false")
end

User.create(firstname: "Admin",lastname: "Admin",email: "Admin@cos.cc",password: "superhaslo", password_confirmation: "superhaslo",admin:"true")
5.times do |i|
  Category.create(name: "Category#{i}")
end

20.times do |i|
  Product.create(title: "Product#{i}",description: "jakis opis dla produktu #{i}", price: "#{1+rand(1000)}",category_id: "1", user_id: "#{1+rand(4)}")
end

100.times do |i|
  Review.create(content:"#{SecureRandom.hex(5)} #{SecureRandom.hex(3)} #{SecureRandom.hex(8)} #{SecureRandom.hex(4)}.",rating:"#{1+rand(4)}",product_id:"#{1+rand(19)}",user_id: "#{1+rand(4)}")
end

