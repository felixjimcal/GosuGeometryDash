require 'gosu'
require './Topo'

HEIGHT = 480
WIDTH = 640

class MainWindow < Gosu::Window
    def initialize()
        super WIDTH, HEIGHT, false
        self.caption = "Geometry Dash"
        @topo = Topo.new(self)
        @background_image = Gosu::Image.new("media/background.jpg", :tileable => true)
    end

    def update
        @topo.move
    end

    def draw
        @background_image.draw(0, 0, 0)
        @topo.draw
    end

end

window = MainWindow.new
window.show