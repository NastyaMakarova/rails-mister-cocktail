require "open-uri"

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients_drinks = JSON.parse(open(url).read)

ingredients_drinks['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
