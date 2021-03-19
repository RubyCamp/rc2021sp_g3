class Frog < Sprite
    #include MathHelper
    attr_accessor :life
    def initialize(x, y, image, life)
        super(x, y, image)
        self.x = x
        self.y = y

        @floor = 380
        @ceiling = 265
        @wall_l = 0
        @wall_r = 600

        @jumping = false
        @direction = 0

        t = 3
        angle = 60
        @g = 1
        @life = life
        
        @dx = Math.cos((angle) / 180.0 * Math::PI) * t
        @dy = Math.sin((angle) / 180.0 * Math::PI) * t
    end

    def update
        hit_wall
        
        if Input.key_push?(K_SPACE) then
            if self.y >= @floor then
                
                @jumping = true
            end    
        end

        if @jumping then
            jumping
        else
            walking
        end
        self.x += @direction
    end
    def shot
        @life -= 1

    end

    private

    def jumping
        while y >= @ceiling
            self.x += @dx
            self.y -= @dy
        end
        @jumping = false
    end

    def walking
        @direction = Input.x * 3
        if self.y <= @floor then
            self.x += @dx
            self.y += @dy
        end
    end

    def hit_wall
        if self.x <= @wall_l then
            self.x = @wall_l
        elsif (self.x + 32) >= @wall_r then
            self.x = @wall_r - 32
        end
    end

    
end