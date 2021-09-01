# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Recipe.destroy_all

vee = User.create(username: "vee", password: "abc123", status: "I love my dog") 
eric = User.create(username: "eric", password: "chicken", status: "Leader of bananas rockets and curlies")
jason = User.create(username: "jtothesun", password: "cats123", status: "being da best")

fried_chkn = Recipe.create(user_id: vee.id, name: 'Plain Chicken',
servings: 3,
cooktime: '1:45',
steps: "1. In a deep-fat fryer, heat oil to 375°\n2. Fry chicken pieces until skin is golden brown\n3. Eat chicken",
ingredients: "5 chicken pieces\n1/4 bottle of oil")
