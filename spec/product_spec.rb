require_relative '../lib/product'

RSpec.describe Product do
  before do
    class A
      include Product
    end
  end

  it 'user can choose the product ' do
    expect(A.new.all_products(1)).to eq([cola: 100])
    expect(A.new.all_products(2)).to eq([pepsi: 200])
    expect(A.new.all_products(3)).to eq([fanta: 300])
  end

  it 'validation product' do
    expect(A.new.all_products(4)).to eq(nil)
  end
end
