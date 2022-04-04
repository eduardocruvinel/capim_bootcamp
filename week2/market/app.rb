require_relative 'product'
require_relative 'market'

product = Product.new
product.name = "rice"
product.price = "10"

market = Market.new(product)
market.buy
