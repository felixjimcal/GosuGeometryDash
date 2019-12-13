require 'gosu'
require './Topo'
require './Player'

HEIGHT = 480
WIDTH = 640

class MainWindow < Gosu::Window
    def initialize()
        super WIDTH, HEIGHT, false
        self.caption = "Geometry Dash"
        @topo = Topo.new(self)
        @player=Player.new(self)
        @background_image = Gosu::Image.new("media/background.jpg", :tileable => true)
    end

    def update
        @topo.move
    end

    def draw
        @background_image.draw(0, 0, 0)
        @topo.draw
        @player.draw()
    end
    def update
        if button_down? Gosu::KbRight
            @player.move_right
        elsif button_down? Gosu::KbLeft
            @player.move_left
        end

        if button_down? Gosu::KbSpace
            @player.BajarGancho
        else
            @player.SubirGancho
        end
    end

end

window = MainWindow.new
window.show