class Market
  def initialize(product)
    @name = product.name
    @price = product.price
  end

  def buy 
    puts "You bought #{@name} for #{@price} reais."
  end
end