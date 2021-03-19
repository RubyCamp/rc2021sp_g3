class Player < Sprite
    attr_accessor :life
    def initialize(x, y, image, speed, life)
        super(x, y, image)
        @speed = speed
        @g = 10
        @life = life
    end
    
    def update
        self.x += Input.x * @speed
        # self.y += Input.y * @speed
        if Input.key_down?(K_SPACE) then
            self.y -= 30
        end

        if self.y <= 340 then
            self.y += @g
        end 
    end

    def shot
        @life -= 1
    end

    def frameout(width)
        @life = 0 if (self.x >= width or self.x <= 0)
    end
end