class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  def ingredient_attributes=(ingredient)
    self.recipe = Recipe.find_or_create_by(name: recipe.name)
    self.recipe.update(ingredient)
  end
  
end
