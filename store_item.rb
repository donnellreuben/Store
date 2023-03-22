#HASH
# candybar = {
#    color: "brown",
#    price: 10_000,
#   flavor: "milk chocolate",
# }

# popcorn = {
#   color: "yellow",
#   price: 1.0,
#   flavor: "cheddar",
# }

# lollipop = {
#   color: "green",
#   price: 20.0,
#   flavor: "sour apple",
# }

# p candybar[:color]
# p popcorn
# p lollipop


#CLASS
class Items
  def initialize(item_name, color, price, flavor)
    @item_name = item_name
    @color = color
    @price = price
    @flavor = flavor
  end

  def print_description
    p "The #{@item_name} is #{@color}, has a #{@flavor} flavor and costs #{@price}."
  end

  def item_name
    @item_name.upcase
  end

  def price_increase
    @price *= 2.3
  end

  def item_name=(new_name)
    @item_name = new_name
  end

  def color=(new_color)
    @color = new_color
  end

  def flavor=(new_flavor)
    @flavor = new_flavor
  end

  def price=(new_price)
    @price = new_price
  end
end

#dont touch this (template/original)
item1 = Items.new("candybar", "brown", 10000, "milk chocolate")
item2 = Items.new("popcorn", "yellow", 1.0, "cheddar")
item3 = Items.new("lollipop", "green", 20.0, "sour apple")

#edit items here:
  #item1
item1.item_name=("Kit-Kat")
item1.color=("Indigo")
item1.price=(29999)
item1.flavor=("muddy")

#   #item2
# item2.item_name=()
# item2.color=()
# item2.price=()
# item2.flavor=()

#   #item3
# item3.item_name=()
# item3.color=()
# item3.price=()
# item3.flavor=()



#print section
item1.print_description
item2.print_description
item3.print_description