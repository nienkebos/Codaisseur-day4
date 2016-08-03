require './waiter'
w = Waiter.new
w.greet_guest
order_number = w.serve_guest
p w.take_order(order_number)
