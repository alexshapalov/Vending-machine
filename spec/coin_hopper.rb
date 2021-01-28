# require '../lib/vanding/coin_hopper.rb'
require_relative '../lib/vanding/mashine/coin'
# require_relative '../lib/vanding/mashine/coin_hopper'
# require_relative 'vanding/mashine/coin_hopper'
# require_relative '../lib/coin_hopper'
# require_relative 'mashine/coin_hopper'
# require_relative '../vanding/mashine/coin_hopper'


# require_relative "../lib/machine"

# require 'vanding/mashine/coin'
# require 'mashine'

RSpec.describe CoinHopper do
  it 'calculate amoun' do
    coin1 = Coin.new([25])
    coin2 = Coin.new([50])
    coin3 = Coin.new([100])

    sum = CoinHopper.new(coin1, coin2, coin3)

    expect(sum.amount).to eq(325)
  end
end
