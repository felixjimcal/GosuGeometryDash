require 'gosu'
require './Topo'

HEIGHT = 640
WIDTH = 480

class MainWindow < Gosu::Window
    attr_reader :width, :height
    def initialize()
        super HEIGHT, WIDTH, false
        self.caption = "Geometry Dash"

        @background_image = Gosu::Image.new("media/background.jpg", :tileable => true)
    end

    def draw
        @background_image.draw(0, 0, 0)
    end

end

window = MainWindow.new
window.show