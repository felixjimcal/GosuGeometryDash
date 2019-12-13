class Player
    
    def initialize(window)
        @x = 300
        @y = 10
        @spriteSize=1


        @boxCollision=[0,0]
        @speed=2
<<<<<<< Updated upstream
        @image = Gosu::Image.new(window, "s_player.png", true)
    end
    def draw()
        @image.draw(@x, @y, 0, @spriteSize, @spriteSize, color = 0xff_ffffff, mode = :default)
=======
        @image = Gosu::Image.new(window, "Minecart.png", false)

        @offset=30
        @ropeYSize=1
        @rope = Gosu::Image.new(window, "Rope.png", :tileable => true)

        @gancho = Gosu::Image.new(window, "Gancho.png", true)
        @yGancho=@y+@ropeYSize+@rope.width



    end
    def draw()
        @image.draw(@x, @y, 0, @spriteSize, @spriteSize, color = 0xff_ffffff, mode = :default)
        @rope.draw(@x+@image.width/4, @y+@offset, 0, @spriteSize, @ropeYSize, color = 0xff_ffffff, mode = :default)
        @gancho.draw(@x+@image.width/4, @yGancho, 0, @spriteSize, @spriteSize, color = 0xff_ffffff, mode = :default)
>>>>>>> Stashed changes
        @boxCollision=[@image.width,@image.height]
    end
    def Jump()
        if @x >0
            @x -= @speed
        end
    end
<<<<<<< Updated upstream
=======
    def move_right()
        if @x < WIDTH-@image.width
            @x +=@speed
        end
    end

    def BajarGancho()
        @ropeYSize+=1
        @yGancho=@y+@ropeYSize+@rope.width
    end

    def SubirGancho()
        @ropeYSize-=1
        @yGancho=@y+@ropeYSize+@rope.width
    end

    
>>>>>>> Stashed changes

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