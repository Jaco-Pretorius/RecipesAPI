collection @recipes, object_root: false
attributes :id, :name, :instructions
node(:user) { |recipe| recipe.user.try(:name) }
node(:categories) { |recipe| recipe.categories.map(&:name) }