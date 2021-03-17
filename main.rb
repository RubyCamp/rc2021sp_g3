require 'dxruby'
require_relative 'frog'
require_relative 'snake'

Window.width = 600
Window.height = 450
Window.caption = "RubyCamp2021 Team3"

back = Image.load("images/back.png")

#player = Player.new(100, 380)

frog = Frog.new(100, 380)
snake = Snake.new(500, 380)

Window.loop do
    Window.draw(0, 0, back)
    
    #player.update
    #player.draw
    
    frog.update
    frog.draw
    
    snake.update
    snake.draw
end