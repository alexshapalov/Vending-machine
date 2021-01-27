require_relative 'coin'

class CoinHopper
  def initialize(coins = [])
    @coins = coins
  end

  def amount
    @coins.map(&:value).reduce(0, :+)
  end
end
