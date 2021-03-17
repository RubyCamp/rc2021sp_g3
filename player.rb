class Player < Sprite

    def initialize(x, y, image, speed)
        super(x, y, image)
        @speed = speed
        @g = 10
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
end