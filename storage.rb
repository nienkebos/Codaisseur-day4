class Storage

  def initialize
    @items = [
      Ingredient.new(Ingredient::TOMATO, 8),
      Ingredient.new(Ingredient::DOUGH, 2),
      Ingredient.new(Ingredient::MOZZARELLA, 1),
      Ingredient.new(Ingredient::PEPERONI, 0.3)
    ]
  end

  def fetch(ingredients) #kitchen kijkt of voorraad voldoende is
    ingredients.each do |ingredient|
      item = @items.detect{|item| item.name == ingredient.name}
      #itemnaam en ingredientnaam vergelijken
      if item
        item.use ingredient.amount
        #item.use/ingredient.amount in ingredient.rb
        #als itemnaam en ingredientnaam overeenkomen, gaat @storage in kitchen aan
      else
        return false
      end
    end
  end

end
