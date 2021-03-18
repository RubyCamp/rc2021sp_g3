require 'dxruby'
require_relative 'frog'
require_relative 'snake'
require_relative 'Scroll1'
require_relative 'player'
require_relative 'enemy'
require_relative 'score'


Width = 600
Height = 450

Window.width = Width
Window.height = Height
Window.caption = "RubyCamp2021 Team3"

back = Image.load("images/back.png")
image = Image.load("images/player.png")
image.set_color_key([255, 255, 255])

player = Player.new(250, 340, image, 10, 3)

frog = Frog.new(100, 380)
snake = Snake.new(500, 380)

enemy = Image.load("images/enemy.png")
enemy.set_color_key([255, 255, 255])


100.times do
    Enemy.add(rand(500..10000), 340, enemy, 5)
end

score = Score::Score.new
Window.loop do
    Window.draw(0, 0, back)
    score.cal
    p player.life
    break if Input.key_push?(K_ESCAPE)
    # Window.draw(500, 340, enemy)
    frog.update
    frog.draw

    player.update
    player.draw

    snake.update
    snake.draw

    Enemy.collision.each do |enemy|
        enemy.update
        enemy.draw
    end

    Sprite.check(player, Enemy.collision)
    player.frameout(Width)

    break if player.life == 0

end 
