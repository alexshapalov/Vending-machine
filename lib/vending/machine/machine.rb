class Machine
  include Messages
  include Product

  def initialize
    @calculator = Calculator.new
  end

  def start
    greeting
    choose_product
    calculator
    finish
  end

  private

  def choose_product
    first_meassage
    @product = gets.chomp.to_i

    return puts MESSAGE[:try_again] until valid_product?
  end

  def calculator
    @calculator.call(get_price)
  end

  def get_price
    all_products(@product)[0].values.first
  end
end
