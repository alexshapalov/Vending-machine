require_relative "../lib/calculate"
require_relative "../lib/coin"
require_relative "../lib/coin_hopper"
require_relative "../lib/mashine"

RSpec.describe Calculate do
  before do
    coin1 = Coin.new(25)
    coin2 = Coin.new(50)
    coin3 = Coin.new(100)

    coin_hopper = CoinHopper.new([coin1, coin2, coin3])
  end
  
  it 'calculate amoun' do
    coin_hopper
    mashine = Calculate.new.call

    # expect(mashine.start).to eq(nil)
  end
end
