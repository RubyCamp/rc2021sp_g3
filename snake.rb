class Snake < Sprite
    def initialize(x, y)
        self.x = x
        self.y = y
        self.image = Image.load("images/snake_m2.png")
        self.image.set_color_key(C_WHITE)
    end
  
    def update
        self.x = x
        self.y = y
    end
  end