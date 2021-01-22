module Messages
  GREETENG1 = "=========================="
  GREETENG2 = "WELCOME TO VANDING MASHINE!".freeze
  GREETENG3 = "=========================="
  CHOOSE_PRODUCT = "Enter number of item or exit".freeze 
  TRY_AGAIN = "Not found. Try again".freeze
  START = "Please give me money".freeze 
  NOT_ENOUGHT = "Please add money.".freeze
  FINISH = "Thank you. Take your product.".freeze
  MESSAGE_WITH_INVALID_VALUE = "Please, use only valid coins: 1 2".freeze
  NO_PDOUCT_SELECTED = "No product selected, please select the product".freeze
  RULES = "Use only coins: 25 50 100 200 300".freeze
  BALANCE =  "Current balance:".freeze

  def greeting
    p GREETENG1
    p GREETENG2
    p GREETENG3
  end

  def price_table
    p "+-------+--------+-------+"
    p "| Name  | Price | Number |"
    p "+-------+--------+-------+"
    p "| Cola   | 100  |    1   |"
    p "| Pepsi  | 200  |    2   |"
    p "| Sprite | 300  |    3   |"
    p "+-------+--------+-------+"
  end
end