class Player
  def play_turn(warrior)
    if warrior.feel.empty?
      if warrior.health <20
        if warrior.health<@health
          if space.captive?
          warrior.walk!
          warrior.rescue!
        else
          warrior.rest!
        end
      else
        warrior.walk!
      end
    else
      warrior.attack!
    end
  @health = warrior.health
  end
end
