require_relative "messages"

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
    while money_amount < price
      p MESSAGE[:not_enought]
      get_money_from_console = gets.to_i
      coin = Coin.new(get_money_from_console)
      coin_validation(coin)
      show_balance
    end
  
    return give_change_to_customer(money_amount, price) if money_amount > price
  end
  
  def give_change_to_customer(moneyin, price)
    change = moneyin - price 
    
    p MESSAGE[:do_not_gave_change] if BANK_LIMIT < change
    p MESSAGE[:your_change]
  
    five_change = BANK_LIMIT - 100  
    p give_change
  end 
  
  def coin_validation(coin)
    return p MESSAGE[:rules] until coin.valid?
    
    @arr << coin
  end

  def money_amount
    @moneyin.amount
  end

  def show_balance
    p "#{MESSAGE[:balance]} #{money_amount}c"
  end
end

