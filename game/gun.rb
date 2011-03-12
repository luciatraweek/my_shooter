class Gun
  def initialize (player)
    @player = player
    @game_window = player.game_window
    @bullets = 6.times.map { Bullet.new(self) }
  end
  
  def update
    if key_pressed? :space
      shoot!
    end
  end
  
  def shoot! 
      next_bullet.shoot if next_bullet
    end
  
  def next_bullet 
    @bullets.find {|bullet| bullet.available?}
  end

end