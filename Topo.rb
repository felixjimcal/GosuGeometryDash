require 'gosu'

class Topo
    attr_reader :x, :y
    def initialize(map, x, y)
        @x, @y = x, y
        @map = map
        @image = Gosu::Image.new(window, "ghost.png", true)
      end

      def draw()
        @image.draw(@x, @y, 0)
      end

end