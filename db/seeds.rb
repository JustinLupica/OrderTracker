# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(category: 'Cupcakes', size: 'Dozen', flavor: 'White Chocolate Raspberry', current_quantity: 6, reorder: false)
Product.create(category: 'Cupcakes', size: 'Dozen', flavor: 'Strawberry', current_quantity: 8, reorder: false)
Product.create(category: 'Cupcakes', size: 'Dozen', flavor: 'Mocha Madness', current_quantity: 3, reorder: true)
Product.create(category: 'Cupcakes', size: 'Dozen', flavor: 'Lemon Raspberry', current_quantity: 5, reorder: false)
Product.create(category: 'Cupcakes', size: 'Dozen', flavor: 'Double Chocolate', current_quantity: 4, reorder: true)
Product.create(category: 'Cupcakes', size: 'Dozen', flavor: 'Triple Layer Mousse', current_quantity: 2, reorder: true)
Product.create(category: 'Cupcakes', size: 'Half-Dozen', flavor: 'Triple Layer Mousse', current_quantity: 2, reorder: true)

Product.create(category: 'Cakes', size: '8 inch', flavor: 'Strawberries and Cream', current_quantity: 6, reorder: false)
Product.create(category: 'Cakes', size: '6 inch', flavor: 'Strawberries and Cream', current_quantity: 4, reorder: false)
Product.create(category: 'Cakes', size: '8 inch', flavor: 'Chocolate Mousse', current_quantity: 3, reorder: true)
Product.create(category: 'Cakes', size: '6 inch', flavor: 'Chocolate Mousse', current_quantity: 5, reorder: false)
Product.create(category: 'Cakes', size: '8 inch', flavor: 'Lemon Raspberry', current_quantity: 6, reorder: false)
Product.create(category: 'Cakes', size: '6 inch', flavor: 'Lemon Raspberry', current_quantity: 3, reorder: true)