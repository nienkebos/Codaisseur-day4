require './dish'
require './ingredient'


class Menu

  def initialize #initialize niet toegankelijk voor buiten de method.
    #daarom een nieuwe method: def contents (zie onder)
    @menu = []
    @menu << Dish.new("margharita", [ #roept de method in dish.rb aan
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
    @menu #om content van @menu naar buiten te brengen, bv in pizzeria.rb
  end

end
