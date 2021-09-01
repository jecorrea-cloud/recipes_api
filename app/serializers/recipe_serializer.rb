class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :cooktime, :servings, :steps, :ingredients, :picture, :favorited
end
