class Machine
  include Messages
  include Product

  def initialize
    @calculate = Calculate.new
  end

  def start
    greeting
    choose_product
    calculate
    finish
  end

  private

  def choose_product
    first_meassage
    @product = gets.chomp.to_i

    return puts MESSAGE[:try_again] until valid_product?
  end

  def calculate
    @calculate.call(get_price)
  end

  def get_price
    all_products(@product)[0].values.first
  end
end
