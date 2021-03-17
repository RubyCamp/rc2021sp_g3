require 'dxruby'

require_relative 'score'
Window.width = 600
Window.height = 450
Window.caption = "RubyCamp2021 Team3"

# back = Image.load("images/back.png")
score = Score::Score.new
Window.loop do
    score.cal
    # Window.draw(0, 0, back)
end