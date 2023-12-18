require 'ruby2d'


set width: 1000, height: 800
# Define a square shape.
# @square = Square.new(x: 10, y: 10, size: 25, color:'red')
@square = Square.new(x: 10, y: 10, size: 25, color:'red')

# Define the initial speed (and direction).

@x_speed = 0
@y_speed = 0

# Define what happens when a specific key is pressed.
# Each keypress influences on the  movement along the x and y axis.
on :key_down do |event|
  if event.key == 'j'
    @x_speed = -2
    @y_speed = 0
  elsif event.key == 'l'
    @x_speed = 2
    @y_speed = 0
  elsif event.key == 'i'
    @x_speed = 0
    @y_speed = -2
  elsif event.key == 'k'
    @x_speed = 0
    @y_speed = 2
 
    
elsif event.key == 'space'
    @x_speed = 0
    @y_speed = 0
elsif event.key == 'a'
    @square.x = 0
    @square.y = 0
    
  end
end

update do
  @square.x += @x_speed
  @square.y += @y_speed
end

show