class Machine
  include Messages
  include ProductList

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
    @product = gets.chomp.to_sym
  end

  def calculator
    @calculator.call(get_price)
  end

  def get_price
    return_price_of_product(@product)
  end
end
