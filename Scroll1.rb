module Game
  class Scroll1 
    def initialize
      player_img =  Image.load("images/frog.png")
      @map = Map.new(50, 50, 2, 5, 15)
      @map.set_scroll_direction(1, 1)
      @player = Player.new(10, 10, player_img, @map)

    end
    def cal
      @count_x -= self.sp_x
      if @count_x < 0
        @count_x += MapChip::CHIP_SIZE * self.sp_x
        @mx += self.sp_x
      end

    end
    def reload
    end

    def play
      if Input.key_push?(K_SPACE)
        @player.start_jump
      end

      @map.update
      @map.draw
      @player.draw

    end
  end
end


