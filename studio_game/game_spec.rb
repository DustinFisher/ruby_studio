require_relative 'game'

describe Game do

  before do
    @game = Game.new("Knuckleheads")

    @initial_health = 100
    @player = Player.new("moe", @initial_health)
    
    @game.add_player(@player)
  end

  it "is w00ted" do
    Die.any_instance.stub(:roll).and_return(5)

    @game.play(2)

    @player.health.should == @initial_health + (15 * 2)
  end

  it "is skipped" do
    Die.any_instance.stub(:roll).and_return(3)

    @game.play(2)

    @player.health.should == @initial_health
  end

  it "is blammed" do
    Die.any_instance.stub(:roll).and_return(1)

    @game.play(2)

    @player.health.should == @initial_health - (10 * 2)
  end
end
