collection @recipes
attributes :id, :name, :instructions
node(:user) { |recipe| recipe.user.try(:name) }
node(:categories) { |recipe| recipe.categories.map(&:name) }