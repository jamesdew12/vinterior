class Checkout
  attr_reader :total_cost
  def initialize
    @total_cost = []
  end

  def scan(item)
    prices = {001 => 9.25, 002 => 45.00, 003 => 19.95}
    @total_cost << prices[item]
    fail "not valid product" if prices[item] == nil

  end

  def total
    total = @total_cost.sum
    if @total_cost.count(9.25) > 1
        new_array = @total_cost.map { |x| x == 9.25 ? 8.50 : x }
        total = new_array.sum
    end
    if total > 60
        total_to_round = total*0.9
      return total_to_round.round(2)
    else
      return total
    end


  end


end
