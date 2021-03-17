require 'dxruby'
require_relative 'player'
require_relative 'enemy'

Widoth = 600
Height = 450

Window.width = Widoth
Window.height = Height
Window.caption = "RubyCamp2021 Team3"

back = Image.load("images/back.png")
image = Image.load("images/player.png")
image.set_color_key([255, 255, 255])

player = Player.new(250, 340, image, 10)

enemy = Image.load("images/enemy.png")
enemy.set_color_key([255, 255, 255])

100.times do
    Enemy.add(rand(500..10000), 340, enemy, 5)
end

Window.loop do
    Window.draw(0, 0, back)
    
    break if Input.key_push?(K_ESCAPE)
    # Window.draw(500, 340, enemy)


    player.update
    player.draw

    Enemy.collision.each do |enemy|
        enemy.update
        enemy.draw
    end

    Sprite.check(player, Enemy.collision)

end 
