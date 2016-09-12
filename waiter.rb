require './check'

class Waiter
#binnen de class taken voor de waiter: methods
  def initialize(menu, kitchen) #.new roept initialize op, altijd bovenaan
    @menu = menu #als waiter opgeroepen is, is ook de content van @menu toegankelijk
    @kitchen = kitchen
    @serving = true
    @check = Check.new
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
        p "Your total price is #{@check.sum}"
        p "Thank you for your visit."
        @serving = false
      else
        p "Sorry, I don't understand you."
      end
  end

  def list_menu
    @menu.contents.each_with_index do |dish, index|
      #loop door contents in menu.rb dus array @menu
      p "#{index}. #{dish.name}"
    end
  end

  def order_food(choice) #choice = from order_food(gets.chomp.to_1)
    dish = @menu.contents[choice]
    if dish
      if  # [] get item from array contents by index
        @kitchen.order(dish)
        p "Dish is on its way"
        @check.add(dish) #dish toevoegen aan @items array in check
      else
        p "Sorry, this dish is not available, out of stock"
      end
    else
      p "This dish is not on the menu, choose again"
    end
  end

  def serving?
    return @serving
  end

  def check
    @check.sum
  end


end
