class Mashine
  include Messages
  include Product

  def initialize
    @calculate = Calculate.new
  end

  def start
    greeting
    choose_product
    calculate
    p FINISH
  end
  
  private

  def choose_product
    p CHOOSE_PRODUCT
    price_table
    p RULES
    @product = gets.chomp.to_i
    return p TRY_AGAIN until valid_product?
  end
  
  def calculate
    @calculate.call(get_price(@product))
  end

  def get_price(product)
    all_products(@product)[0].values.first 
  end
end
