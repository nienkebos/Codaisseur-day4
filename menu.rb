class Menu
require './dish'

  def initialize
    @menu = []
    @menu << Dish.new("margharita")
    @menu << Dish.new("peperoni")
    @menu << Dish.new("napoletana")
  end

  def contents
    @menu
  end


end
