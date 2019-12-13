require 'gosu'
require './Topo'
require './Player'

HEIGHT = 640
WIDTH = 480

class MainWindow < Gosu::Window
    attr_reader :width, :height
    def initialize()
        super WIDTH, HEIGHT, false
        self.caption = "Geometry Dash"
        @player=Player.new(self)
        @background_image = Gosu::Image.new("media/background.jpg", :tileable => true)
    end

    def draw
        @background_image.draw(0, 0, 0)
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