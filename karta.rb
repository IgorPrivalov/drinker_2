class Karta

  attr_reader :value, :mast

  @@masts = ['Pika', 'Chirva', 'Hrest', 'Buba']

  def initialize(value, mast)
    @value = value
    @mast = @@masts[mast]
  end

  def to_s
    "#{@value} #{@mast}"
  end
end