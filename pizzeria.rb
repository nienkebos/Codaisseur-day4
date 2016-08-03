require './menu' #always on top of the file, outside a class
require './waiter' #waiter file(blueprint) gelinkt en toegankelijk
require './kitchen'

#.new roept initialize (constructor met alles erin) op
menu = Menu.new
kitchen = Kitchen.new
w = Waiter.new(menu, kitchen)
#physical waiter in restaurant gemaakt(waiter heeft access tot menu)

w.greet_guest #calling the waiter to greet guest
w.serve_guest #calling the waiter to serve guest
while(w.serving?) do
  w.serve_guest
end
