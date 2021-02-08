require_relative 'messages'

class Calculator
  include Messages

  BANK_LIMIT = 100

  def initialize
    @arr = []
    @moneyin = CoinHopper.new(@arr)
    @coin = Coin.new
  end

  def call(price)
    start(price)
  end

  private

  def start(price)
    while money_amount < price
      puts MESSAGE[:not_enought]
      @coin.value = gets.to_i
      coin_validation(@coin)
      show_balance
    end

    return give_change_to_customer(money_amount, price) if money_amount > price
  end

  def give_change_to_customer(moneyin, price)
    change = moneyin - price

    puts MESSAGE[:do_not_have_change] if BANK_LIMIT < change
    puts MESSAGE[:your_change]

    return p BANK_LIMIT if change >= BANK_LIMIT
    puts give_change = BANK_LIMIT - change
  end

  def coin_validation(coin)
    return puts MESSAGE[:rules] until coin.valid?

    @arr << coin
  end

  def money_amount
    @moneyin.amount
  end

  def show_balance
    puts "#{MESSAGE[:balance]} #{money_amount}c"
  end
end
