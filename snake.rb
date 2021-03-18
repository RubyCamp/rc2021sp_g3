class Snake < Sprite
    # def initialize(x, y)
    #     self.x = x
    #     self.y = y
    #     self.image = Image.load("images/snake_m2.png")
    #     self.image.set_color_key(C_WHITE)
    # end
    @@collision = []

    def self.collision()
        @@collision
    end

    def self.add(x, y, image)
        @@collision << self.new(x, y, image)
    end

  
    def update
        self.x -= rand(1..5)
        self.y = y
    end

    def hit(obj)
        @@collision.delete(self)
    end

  end