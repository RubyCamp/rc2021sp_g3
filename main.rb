require 'dxruby'

require_relative 'gameover'

Window.width = 600
Window.height = 450

back = Image.load("images/back.png")

life = 3
gameover = Gameover.new(life)


Window.loop do
    Window.draw(0, 0, back)
    life = gameover.damage
    break if life == 0
end