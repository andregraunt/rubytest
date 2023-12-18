
require 'ruby2d'

# set width: 640, height: 480

# Circle.new(
#     x: 320, y: 240
# )
# show

set width: 640, height: 480

square = Square.new(
    x: 100, y: 100,
    size: 50,
    color: 'blue'
    
    
)

Triangle.new(
    x1: 120, y1:  50,
    x2: 340, y2: 230,
    x3: 100, y3: 230,
    color: ['red', 'green', 'blue']
  )
  # Using the DSL
get :mouse_x
get :mouse_y

# Or using the `Window` class
Window.mouse_x
Window.mouse_y

on :mouse do |event|
    # A mouse event occurred
    puts event
  end
  on :mouse_down do |event|
    # x and y coordinates of the mouse button event
    puts event.x, event.y
  
    # Read the button event
    case event.button
    when :left
      # Left mouse button pressed down
    when :middle
      # Middle mouse button pressed down
    when :right
      # Right mouse button pressed down
    end
  end

  
update do
    
    square.x += 15
    square.y += 10
      
if square.x > 640
    square.x = 0
end

if square.y > 480
    square.y = 0
end

end


show
