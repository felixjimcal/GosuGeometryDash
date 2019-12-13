require 'gosu'

class Topo
    attr_reader :x, :y
    def initialize(window)
        @x, @y = WIDTH/2, 120
        @window = window
        @image = Gosu::Image.new(window, "media/ghost.png", true)
        @hitLeftWall = true
    end
    
    def draw
        @image.draw(@x, @y, 0)
    end
      
    def move
        if @hitLeftWall
            if @x >= (WIDTH - @image.width)
                @hitLeftWall = false
            end
            @x = @x + 1
        else
            if @x <= 0
                @hitLeftWall = true
            end
            @x = @x - 1
        end
    end
end