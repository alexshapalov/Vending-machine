require_relative "coin"

class CoinHopper
  def initialize(coins = [])
    @coins = coins
  end

  def amount
    @coins.map(&:value).reduce(0, :+)
  end
end

# coin1 = Coin.new(25)
# coin2 = Coin.new(100)
# coin3 = Coin.new(200)
# c = CoinHopper.new([coin1, coin2, coin3])
# p c.calculate

# p c.load([coin1, coin2, coin3])

