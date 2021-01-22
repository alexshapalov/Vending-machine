require_relative "../lib/coin"

RSpec.describe Coin do
  it "create coin with 25c" do
    coin = Coin.new(25)

    expect(coin.value).to eq(25)
  end

  it "create coin with 50c" do
    coin = Coin.new(50)

    expect(coin.value).to eq(50)
  end

  it "create coin with 100c" do
    coin = Coin.new(100)

    expect(coin.value).to eq(100)
  end

  it "create coin with 200c" do
    coin = Coin.new(200)

    expect(coin.value).to eq(200)
  end

  it "create coin with 500c" do
    coin = Coin.new(500)

    expect(coin.value).to eq(500)
  end

  it 'validate coin' do
    coin = Coin.new(100)

    expect(coin.valid?).to eq(true)
  end
end
