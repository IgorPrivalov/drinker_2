class Game

  attr_reader :player, :comp
  def initialize count, name="Player"
    @koloda = Koloda.new count
    @player = Player.new name
    @comp = Player.new "Computer"
    @karts = Array.new
  end

  def play
    give_karts
    while !@player.karts.empty? || @comp.karts.empty?
      step @player
      puts "#{@player.name}: #{@player.karts.last}"
      step @comp
      puts "#{@comp.name}: #{@comp.karts.last}"
    end
    if @player.karts.empty?
      puts "#{@comp.name} won"
    else puts "#{@player.name} won"
    end
  end

  private

    def give_karts
      while !@koloda.karts.empty?
        @player.karts.push (@koloda.karts.pop)
        @comp.karts.push (@koloda.karts.pop)
      end
    end

    def step current_player
      if @karts.size > 0 && current_player.karts.last.mast == @karts.last.mast
        index = current_player.karts.size
        current_player.karts = @karts + current_player.karts
        @karts.push(current_player.karts.delete_at(index))
      else
        @karts.push(current_player.karts.pop)
      end
    end
end