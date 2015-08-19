# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'open-uri'

# 100 users
p "100 users"
100.times do |i|
  User.create(email: "user"+i.to_s+"@mail.com", password: "password123")
end

# 10 top-level categories
p "10 top-level categories"
10.times do |i|
  category = Category.create!(title: Faker::Commerce.color + ' ' + i.to_s, description: Faker::Lorem.sentences(3))
  p category
end

# 30 subcategories of different levels
p "20 to 30 subcategories of different levels"
(20+rand(10)).times do |i|
  rand_id=rand(Category.count)+1
  category = Category.create!(title: Faker::Commerce.color + ' ' + (i+10).to_s, description: Faker::Lorem.sentences(3), category: Category.find(rand_id))
  p category
end

# 20 vendors with random*50 products each
p "20 vendors with random*50 products each"
20.times do |i|
  vendor = Vendor.create!(title: Faker::Company.name + ' ' + i.to_s)
  p vendor
  rand(10).times do |c|
    Comment.create(author_id: (1+rand(100)), contents: Faker::Lorem.sentences(5), commentable: vendor)
  end
  rand(50).times do |j|
    rand_id=rand(Category.count)+1
    product = Product.create!(title: Faker::Commerce.product_name + " " + i.to_s + " " + j.to_s, description: Faker::Hacker.say_something_smart, vendor: vendor, category: Category.find(rand_id))
    p "-->" + product.inspect
    rand(10).times do |c|
      Comment.create(author_id: (1+rand(100)), contents: Faker::Lorem.sentences(5), commentable: product)
    end
    (1+rand(5)).times do |k|
      picture = Picture.create!(title: Faker::Lorem.sentence + i.to_s + j.to_s + k.to_s, file: open(Faker::Avatar.image rand(1000).to_s), product: product)
      p "---->" + picture.inspect
    end
  end
end

# 2000 comments for random comments
p "2000 comments for random comments"
2000.times do |c|
  rand_id=rand(Comment.count)+1
  @comment = Comment.find(rand_id)
  Comment(author_id: (1+rand(100)), contents: Faker::Lorem.sentences(5), commentable: @comment)
end