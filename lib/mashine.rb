class Mashine
  include Messages
  include Product

  def initialize
    @arr = []
  end

  def start
    greeting
    choose_product
    calculate
    # give_change
  end

  private

  def choose_product
    p CHOOSE_PRODUCT
    price_table
    p RULES
    @product = gets.chomp.to_i
    return p TRY_AGAIN until valid_product?
    @price = all_products(@product)[0].values.first 
  end

  def valid_product?
    tovar = [1,2,3]
    tovar.include?(@product)
  end

  def calculate
    c = CoinHopper.new(@arr)

    while c.amount < @price
      p NOT_ENOUGHT
      m = gets.to_i
      coin = Coin.new(m)
      if coin.valid?
        @arr << coin
      else
        p AVAILABLE_PRICE
      end 
      c = CoinHopper.new(@arr)
      p "#{BALANCE} #{c.amount}C"
    end    
    p FINISH
  end

  def output_item
  end

  def return_change
  end

  def finish
  end
end
