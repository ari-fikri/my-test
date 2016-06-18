# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Categories
clothing = Category.find_or_create_by(name: 'Clothing')

fnb = Category.find_or_create_by(name: 'Food and Beverages')

healthcare = Category.find_or_create_by(name: 'Healthcare')

# Products
baju_anak_01 = Product.find_or_create_by(name: 'Marvel T-shirt #001') do |p|
    p.name = 'Marvel T-shirt #001'
    p.category =  clothing
    p.price = 125000
end

baju_anak_02 = Product.find_or_create_by(name: 'Celana baggy #002') do |p|
    p.name = 'Celana baggy #002'
    p.category = clothing
    p.price = 250000
end

syrup_cocopandan = Product.find_or_create_by(name: 'Syrup cocopandan 500ml') do |p|
    p.name = 'Syrup cocopandan 500ml'
    p.category = fnb
    p.price = 32000
end

maltese_cracker = Product.find_or_create_by(name: 'Cracker Maltese 400gr') do |p|
    p.name = 'Cracker Maltese 400gr'
    p.category = fnb
    p.price = 26000
end