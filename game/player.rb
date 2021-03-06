class Player
  
  attr_reader :game_window
  def initialize(game_window)
    @game_window = game_window
    @icon = Gosu::Image.new(game_window, "media/donald.png", false)
    @x = 80
    @y = 250
    @gun = Gun.new(self)
  end
  
  def move_right
    if @x > @game_window.width - (@icon.width + 10)
      @x = @game_window.width - @icon.width
    else
       @x += 10 
     end
    
  end
  
  def move_left
  if @x > 0 
     @x -= 10
   else 
     @x = 0
   end
  end
    
  def update
    if @game_window.button_down? Gosu::Button::KbRight
      move_right
    end
    
    if @game_window.button_down? Gosu::Button::KbLeft
      move_left
    end
    
  end
  
  def draw
    @icon.draw(@x, @y, 10)
  end
end