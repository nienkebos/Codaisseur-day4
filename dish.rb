class Dish

  def initialize(dish_name, ingredients)
    #dish_name is an argument: het .new object wil altijd het
    #argument: een naam in dit geval. A starting state of the object
    @name = dish_name
    #instance variable: kan ook buiten deze method gebruikt worden,
    #bv in ander file
    @ingredients = ingredients
  end

  def name
    @name #om content van @menu naar buiten te brengen, bv in menu.rb
  end

  def ingredients
    @ingredients #om content van @menu naar buiten te brengen, bv in menu.rb
  end

end
