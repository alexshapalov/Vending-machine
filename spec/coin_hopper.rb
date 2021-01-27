require_relative '../lib/coin_hopper'
require_relative '../lib/coin'

RSpec.describe CoinHopper do
  it 'calculate amoun' do
    coin1 = Coin.new([25])
    coin2 = Coin.new([50])
    coin3 = Coin.new([100])

    sum = CoinHopper.new(coin1, coin2, coin3)

    expect(sum.amount).to eq(325)
  end
end
