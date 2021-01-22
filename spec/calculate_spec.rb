require_relative "../lib/calculate"

RSpec.describe Calculate do

  before do
    coin1 = Coin.new(25)
    coin2 = Coin.new(50)
    coin3 = Coin.new(100)

    coin_hopper = CoinHopper([coin1, coin2, coin3])
  end
  
  it 'calculate amoun' do
    mashine = Mashine.new

    expect(mashine.start).to eq(nil)
  end
end
