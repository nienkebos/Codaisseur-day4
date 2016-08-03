class Menu
require './dish'
require './ingredient'

  def initialize
    @menu = []
    @menu << Dish.new("margharita", [
      Ingredient.new(Ingredient::TOMATO, 3),
      Ingredient.new(Ingredient::DOUGH, 0.25),
      Ingredient.new(Ingredient::MOZZARELLA, 0.2)
      ])
    @menu << Dish.new("peperoni", [
      Ingredient.new(Ingredient::TOMATO, 3),
      Ingredient.new(Ingredient::DOUGH, 0.25),
      Ingredient.new(Ingredient::MOZZARELLA, 0.2),
      Ingredient.new(Ingredient::PEPERONI, 0.1)
      ])
    @menu << Dish.new("napoletana", [
      Ingredient.new(Ingredient::TOMATO, 3),
      Ingredient.new(Ingredient::DOUGH, 0.25),
      Ingredient.new(Ingredient::MOZZARELLA, 0.2),
      Ingredient.new(Ingredient::ANCHOVIES, 0.05)
      ])
  end

  def contents
    @menu
  end

end
