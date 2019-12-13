class Player
    
    def initialize(window)
        @x = 300
        @y = 10
        @spriteSize=1.5
        @boxCollision=[0,0]
        @speed=2
        @image = Gosu::Image.new(window, "s_player.png", true)
    end
    def draw()
        @image.draw(@x, @y, 0, @spriteSize, @spriteSize, color = 0xff_ffffff, mode = :default)
        @boxCollision=[@image.width,@image.height]
    end
    def Jump()
        if @x >0
            @x -= @speed
        end
    end

    #PENDIENTE DE PRUEBA
    
    def getCollision(x,y,sizeX,sizeY)
        if @x + @image.width/2 < x - sizeX/2
            return 0
        end
        if @x -@image.width/2> x + sizeX/2
            return 0
        end
        if @y + @image.height/2 < y -sizeY / 2
            return 0
        end
        if @y-@image.height/2 > y + sizeY/2
            return 0
        end
        return 1
        
        


        
    end

end