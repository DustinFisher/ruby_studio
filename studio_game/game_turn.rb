require_relative 'player'
require_relative 'die'
require_relative 'treasure_trove'

module GameTurn
  def self.take_turn(player)
    die = Die.new
    number_rolled = die.roll
    case die.roll
    when 1..2
      player.blam
    when 3..4
      puts "#{player.name} was skipped."
    else
      player.w00t
    end
    hunt = TreasureTrove.random
    puts "#{player.name} found a #{hunt.name} worth #{hunt.points} points"
  end
end
