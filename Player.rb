class Player
    
    def initialize(window)
        @x = 300
        @y = 10
        @spriteSize=1.5
        @speed=2
        @image = Gosu::Image.new(window, "s_player.png", true)
    end
    def draw()
        @image.draw(@x, @y, 0, @spriteSize, @spriteSize, color = 0xff_ffffff, mode = :default)
    end
    def move_left()
        if @x >0
            @x -= @speed
        end
    end
    def move_right()
        if @x < WINDOW_WIDTH-@image.width
            @x += @speed 
        end
    end
    def getCollision(x,y,sizeX,sizeY)


        
    end

end