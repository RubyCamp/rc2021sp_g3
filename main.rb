require 'dxruby'
require_relative 'frog'
require_relative 'snake'
require_relative 'score'

Width = 600
Height = 450

Window.width = Width
Window.height = Height
Window.caption = "RubyCamp2021 Team3"

back = Image.load("images/back.png")

frog_image = Image.load("images/frog_m2.png")
frog_image.set_color_key(C_WHITE)

snake = Image.load("images/snake_m2.png")
snake.set_color_key(C_WHITE)


frog = Frog.new(100, 380, frog_image, 3)

100.times do
    Snake.add(rand(500..10000), 380, snake)
end
score = Score::Score.new
Window.loop do
    Window.draw(0, 0, back)
    score.cal
    break if Input.key_push?(K_ESCAPE)

    frog.update
    frog.draw

    Snake.collision.each do |snake|
        snake.update
        snake.draw
    end

    Sprite.check(frog, Snake.collision)


    break if frog.life == 0

end 
