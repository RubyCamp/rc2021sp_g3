module Score 
    class Score < Frog
        def initialize   
            @score = 0
            @font = Font.new(28)
        end
        
        def cal() 
            @score = @score + 1
            show(@score)
        end
        def cal2()
            fin(@score)
        end
        private
        def fin(score)
            Window.draw_font(220, 220, "SCORE " + score.to_s , @font , color:C_BLACK)
        end
        
        def show(score)
            Window.draw_font(450, 3, "score " + score.to_s, @font)
        end
    end
end


