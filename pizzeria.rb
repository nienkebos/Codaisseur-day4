require './waiter' #waiter file(blueprint) gelinkt

menu = Menu.new

w = Waiter.new(menu)
#physical waiter in restaurant gemaakt(waiter kent menu)
w.greet_guest #calling the waiter to greet guest
w.serve_guest #calling the waiter to serve guest
