class Shirt
  def initialize(size, color)
    @size = size
    @color = color
  end

  def print_info
    p "the #{color} shirt is a #{size}."
  end

  def color
    @color
  end
end

shirt1 = Shirt.new("M", "green")
p shirt1.color