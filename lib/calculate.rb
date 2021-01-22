class Calculate
  include Messages
  
  BANK_LIMIT = 100

  def initialize
    @arr = []
    @moneyin = CoinHopper.new(@arr)
  end

  def call(price)
    start(price)
  end

  private

  def start(price)
    while @moneyin.amount < price
      p NOT_ENOUGHT
      m = gets.to_i
      coin = Coin.new(m)

      if coin.valid?
        @arr << coin
      else
        p RULES
      end 

      p "#{BALANCE} #{@moneyin.amount}c"
    end
  
    return give_change_to_customer(@moneyin.amount, price) if @moneyin.amount > price
  end
  
  def give_change_to_customer(moneyin, price)
    change = moneyin - price 
  
    p DO_NOT_HAVE_CHANGE if BANK_LIMIT < change
    p YOUR_CHANGE
  
    last_change = BANK_LIMIT - 100  
    p last_change
  end    
end

