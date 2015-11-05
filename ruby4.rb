class Player
  def intialize
    @health = 20
  end
  def play_turn(warrior)
    if warrior.feel.empty?
      if warrior.health > 19
      warrior.walk!
    elsif warrior.health < 15
      warrior.rest!
    else
      warrior.walk!
    end
    else
     warrior.attack!
    end
    @health=warrior.health
  end
end
