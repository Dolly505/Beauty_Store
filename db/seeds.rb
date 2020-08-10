# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
Product.create!(name: 'Paw Paw',
    description: %{Powder is very soft},
    image: 'paw.jpeg',
    price: 280)
Product.create!(name: 'Lipstick',
    description: %{Lipstick is red}, 
    image: 'Lipstick.jpeg',
    price: 100)
Product.create!(name: 'Powder',
    description: %{Powder is not granual}, 
    image: 'powder.jpg', 
    price: 250)
Product.create!(name: 'Nailpaint', 
    description: %{Nailpaint red in color}, 
    image: 'Nailpaint.jpeg',
    price: 300)
Product.create!(name: 'Lash_Glue',
    description: %{Lash_Glue }, 
    image: 'Lash_Glue.jpeg',
    price: 140)