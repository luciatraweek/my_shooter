class My_shooter < Gosu::Window
  def initialize(window_width, window_height)
    super(window_width,window_height,0)
    @background_image = background_image "media/pario_background.png"
    @player = Player.new(self)
    @target = Target.new(self)
  end

  def update
  @player.update
  end

  def draw
    @background_image.draw 0,0,0
    @player.draw
    @target.draw
  end
end
