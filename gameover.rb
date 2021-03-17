class Gameover
    def initialize(life)
        @life = life
    end

    def damage
        @life -= 1 if Input.key_push?(K_M)#playerとenemyが衝突したとき
    end
end