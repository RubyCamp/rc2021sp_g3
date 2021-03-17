class Frog < Sprite
    #include MathHelper

    def initialize(x, y)
        self.x = x
        self.y = y
        self.image = Image.load("images/frog_m2.png")
        self.image.set_color_key(C_WHITE)

        @floor = 380
        @ceiling = 300

        # @v = 120
        t = 2
        angle = 60
        @g = 1
        @dx = Math.cos((angle) / 180.0 * Math::PI) * t
        @dy = Math.sin((angle) / 180.0 * Math::PI) * t
        # self.x += @dx
        # self.y -= @dy
    end
  
    def update
        self.x += Input.x
        self.y *= @g
        if Input.key_push?(K_SPACE)
            #self.x += @dx
            while y >= @ceiling
                self.y -= @dy
            end

            self.y += @dy
        end
    end

  end