require './storage'

class Kitchen

  def initialize
    @storage = Storage.new
  end

  def order(dish)
    p "KITCHEN: Order received for #{dish.name}"
    p "I'm gonna need some:"

    dish.ingredients.each {|ingredient| p "#{ingredient.amount} - #{ingredient.name}"}
    @storage.fetch(dish.ingredients)
  end

end
