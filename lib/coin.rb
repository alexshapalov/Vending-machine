require 'set'
require_relative 'messages'

class Coin
  include Messages

  COINS = Set[25, 50, 100, 200, 500].freeze

  attr_accessor :value

  def initialize(*value)
    @value = value
  end

  def valid?
    COINS.include?(value)
  end
end
