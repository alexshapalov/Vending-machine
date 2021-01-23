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
      p MESSAGE[:not_enought]
      m = gets.to_i
      coin = Coin.new(m)

      if coin.valid?
        @arr << coin
      else
        p MESSAGE[:rules]
      end 

      p "#{MESSAGE[:balance]} #{@moneyin.amount}c"
    end
  
    return give_change_to_customer(@moneyin.amount, price) if @moneyin.amount > price
  end
  
  def give_change_to_customer(moneyin, price)
    change = moneyin - price 
    MESSAGE[:do_not_gave_change]
    
    p MESSAGE[:do_not_gave_change] if BANK_LIMIT < change
    p MESSAGE[:your_change]
  
    last_change = BANK_LIMIT - 100  
    p last_change
  end    
end

