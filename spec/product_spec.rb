require_relative '../lib/product'

RSpec.describe Product do
  before do
    class A
      include Product
    end
  end

  it 'user can choose the product ' do
    expect(A.new.return_product_from_db(1)).to eq([cola: 100])
    expect(A.new.return_product_from_db(2)).to eq([pepsi: 200])
    expect(A.new.return_product_from_db(3)).to eq([fanta: 300])
  end

  it 'validation product' do
    expect(A.new.return_product_from_db(4)).to eq(nil)
  end
end
