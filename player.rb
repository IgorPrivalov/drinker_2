class Player

  attr_accessor :karts
  attr_reader :name

  def initialize (name)
    @name = name
    @karts = Array.new
  end
end