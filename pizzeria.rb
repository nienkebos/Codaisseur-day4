require './menu'
require './waiter' #waiter file(blueprint) gelinkt
require './kitchen'

#.new roept initialize op
kitchen = Kitchen.new
menu = Menu.new
w = Waiter.new(menu, kitchen)
#physical waiter in restaurant gemaakt(waiter kent menu)

w.greet_guest #calling the waiter to greet guest
w.serve_guest #calling the waiter to serve guest
