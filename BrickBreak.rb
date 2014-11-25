require 'gosu'
require './Ball.rb'

class GameWindow < Gosu::Window
    def initialize
        super 640, 480, false
        self.caption = "Brick Break"

        @ball = Ball.new(self, 640, 480)
        @ball.place(100, 100)
    end

    def update
        if button_down? Gosu::KbLeft
            @ball.move_left
        end
        if button_down? Gosu::KbRight
            @ball.move_right
        end

        if button_down? Gosu::KbUp
            @ball.move_up
        end

        if button_down? Gosu::KbDown
            @ball.move_down
        end
    end

    def draw
        @ball.draw
    end
end


window = GameWindow.new
window.show
