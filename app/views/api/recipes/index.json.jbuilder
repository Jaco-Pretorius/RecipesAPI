json.array! @recipes do |recipe|
  json.(recipe, :id, :name, :instructions)
  json.user recipe.user.try(:name)
  json.categories recipe.categories.map(&:name)
end