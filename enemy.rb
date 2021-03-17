class Enemy < Sprite

    @@collision = []

    def self.collision()
        @@collision
    end

    def self.add(x, y, image ,speed)
        @@collision << self.new(x, y, image, speed)
    end
    
    def update
        self.x -= 5
    end

    def hit(obj)
        @@collision.delete(self)
    end
end