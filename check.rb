class Check

  def initialize
    @items = []

  end

  def add(item)
    @items << item
  end

  def sum
    total_amount = 0
    @items.each {|item| total_amount += item.price}
    total_amount
  end

end
