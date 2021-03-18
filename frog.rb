class Frog < Sprite
    #include MathHelper

    def initialize(x, y)
        self.x = x
        self.y = y
        self.image = Image.load("images/frog_m2.png")
        self.image.set_color_key(C_WHITE)

        @floor = 380
        @ceiling = 320
        @wall_l = 0
        @wall_r = 600

        @jumping = false
        @direction = 0

        t = 2
        angle = 45
        @g = 1
        @dx = Math.cos((angle) / 180.0 * Math::PI) * t
        @dy = Math.sin((angle) / 180.0 * Math::PI) * t
    end

    def update
        @jumping = true if Input.key_push?(K_SPACE)
        hit_wall
        if @jumping then
            jumping
            # if self.y <= @floor then
            #     self.y += @dy
            # end
        else
            walking
        end
        self.x += @direction
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