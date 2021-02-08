# require "vending/machine/version"

require_relative 'vending/machine/coin_hopper.rb'
require_relative 'vending/machine/messages'
require_relative 'vending/machine/coin'
require_relative 'vending/machine/product'
require_relative 'vending/machine/machine'
require_relative 'vending/machine/calculator'

# module Vending
#   module Machine
#     class Error < StandardError; end
    
#     def self.start
#       p 'sssss'
#       # Mashine.new.start
#     end
#   end
# end

Machine.new.start