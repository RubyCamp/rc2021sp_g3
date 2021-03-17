module Score 
    class Score
        def initialize   
            @score = 0
            @font = Font.new(28)
        end
        
        def cal() 
            @score = @score + 1
            show(@score)
        end
        def show(score)
            Window.draw_font(450, 5, "score " + score.to_s, @font)
        end
    end
end


