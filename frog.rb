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

        t = 3
        angle = 60
        @g = 1
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

    private

    # ジャンプするときの動作
    def jumping
        while y >= @ceiling
            self.x += @dx
            self.y -= @dy
        end
        @jumping = false
    end

    # 歩いているときの動作
    def walking
        @direction = Input.x * 3
        if self.y <= @floor then
            self.x += @dx
            self.y += @dy
        end
    end

    # 画面外に出ないように処理
    def hit_wall
        if self.x <= @wall_l then
            self.x = @wall_l
        elsif (self.x + 32) >= @wall_r then
            self.x = @wall_r - 32
        end
    end
end