require './check'

class Waiter
#binnen de class taken voor de waiter: methods
  def initialize(menu, kitchen) #.new roept initialize op, altijd bovenaan
    @menu = menu #als waiter opgeroepen is, is ook de content van @menu toegankelijk
    @kitchen = kitchen
    @check = Check.new
    @serving = true
  end

  def greet_guest
    p "Good day. Welcome to our lovely restaurant"
  end

  def serve_guest
    p "How can I be of service?"
    p "1. Would you like to order a pizza?"
    p "2. Would you like to leave?"
    choice = gets.chomp.to_i
    take_order(choice)
  end

  def take_order(order_number)
    case order_number #case is a statement like 'if'/'or'
      when 1
        p "Let me get the menu..."
        list_menu
        order_food(gets.chomp.to_i)
      when 2
        p "Thank you for your visit."
        @serving = false
      else
        p "Sorry, I don't understand you."
      end
  end

  def list_menu
    @menu.contents.each_with_index do |dish, index|
      #loops door contents in menu.rb dus array @menu
      p "#{index}. #{dish.name}"
    end
  end

  def order_food(choice)
    dish = @menu.contents[choice]
    if @kitchen.order(dish)
      p "Dish is on its way"
      @check.add(dish)
    else
      p "Sorry, this dish is not available"
    end
  end

  def serving?
    return @serving
  end


end
