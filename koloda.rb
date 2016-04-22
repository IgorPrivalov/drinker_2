class Koloda

  attr_reader :karts, :count

  MAST_COUNT = 4

  def initialize (count)
    @karts = Array.new
    @count = count
    generate
    mix
  end

  private

    def generate
      val = 15 - @count/MAST_COUNT
      (@count/MAST_COUNT).times do
        mast = 0
        MAST_COUNT.times {@karts.push (Karta.new val, mast); mast += 1}
        val += 1
      end
    end

    def mix
      (@count*2).times do
        mix_helper = @karts.delete_at(rand(@count - 1))
        @karts.push(mix_helper)
      end
    end
end