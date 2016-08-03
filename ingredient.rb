class Ingredient

  TOMATO = "tomato"
  DOUGH = "dough"
  MOZZARELLA = "mozzarella"
  ANCHOVIES = "anchovies"
  PEPERONI = "peperoni"

  def initialize(name, amount)
    @name = name
    @amount = amount
  end

  def name
    @name    
  end

  def amount
    @amount
  end

end
