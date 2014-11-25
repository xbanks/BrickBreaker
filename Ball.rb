require "gosu"

class Ball

    def initialize(window, width, height)
        @image = Gosu::Image.new(window, "images/ball.png", true)
        @bounds = {'zero' => 0 , 'width' => width-21,'height' => height-21}
        @x = @y = 100
        @angle = 0
        @vel = 5
        @t = 0.1
        @jump_time = 0.0
        @jump_vel = 5.0
        @gravity = 9.8
    end

    def place(x, y)
        @x, @y = x, y
    end

    def move_left
        @x -= @vel unless @x <= @bounds['zero']
    end

    def move_right
        @x += @vel unless @x >= @bounds['width']
    end

    def move_up
        @y -= @vel unless @y <= @bounds['zero']
    end

    def move_down
        @y += @vel unless @y >= @bounds['height']
    end

    def jump
        @jump_time += 0.01
        @y = @y - @jump_vel*@jump_time + 0.5*(@gravity)*@jump_time*@jump_time
    end

    def draw
        @image.draw(@x, @y, 1)
    end
end
