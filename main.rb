require 'dxruby'

Window.width = 600
Window.height = 450
Window.caption = "RubyCamp2021 Team3"

back = Image.load("images/back.png")

Window.loop do
    Window.draw(0, 0, back)
end