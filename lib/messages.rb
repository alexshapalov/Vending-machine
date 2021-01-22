module Messages
  GREETENG1 = "=========================="
  GREETENG2 = "WELCOME!"
  GREETENG3 = "=========================="
  CHOOSE_PRODUCT = "Enter item: 1-pepsy: 100C, 2-sprite: 200C, 3-cola: 300C, or exit".freeze 
  TRY_AGAIN = "Not found. Try again".freeze
  START = "Plese give me money".freeze 
  NOT_ENOUGHT = "Not enought money".freeze
  FINISH = "Thank you".freeze
  MESSAGE_WITH_INVALID_VALUE = "Please, use only valid coins: 1 2".freeze
  NO_PDOUCT_SELECTED = "No product selected, please select the product".freeze
  AVAILABLE_PRICE = "Use only: 25 50 100 200 300".freeze

  def greeting
    p GREETENG1
    p GREETENG2
    p GREETENG3
  end
end