require 'gosu'

HEIGHT = 640
WIDTH = 480

class MainWindow < Gosu::Window
    def initialize
        super HEIGHT, WIDTH, false
        self.caption = "Geometry Dash"
    end

end

window = MainWindow.new
window.show