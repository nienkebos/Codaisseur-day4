require './menu'

class Waiter
#binnen de class taken voor de waiter: methods

  def initialize(menu)
    @menu = menu
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
      when 2
        p "Thank you for your visit."
      else
        p "Sorry, I don't understand you."
      end
  end

  def list_menu
    @menu.contents.each do |recipe|
      p "#{recipe.name}"
    end
  end


end
