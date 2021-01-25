module Messages
  MESSAGE = {
    start: "Please give me money",
    chose_product: "Enter number of item or exit",
    try_again: "Not found. Try again. Use available numbrs",
    not_enought: "Please add money.",
    invalid_valur: "Please, use only valid coins: 1 2",
    no_product_selected: "No product selected, please select the product",
    rules: "Use only coins: 25 50 100 200 300",
    balance:  "Current balance:",
    do_not_have_change: "We do now have a change",
    your_change: "Take you change:",
  }.freeze 
  
  def greeting
    p "=========================="
    p "WELCOME TO VANDING MASHINE!"
    p "=========================="
  end

  def first_meassage
    p MESSAGE[:chose_product]
    price_table
    p MESSAGE[:rules]
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

  def finish
    p "=========================="
    p "THANKS! TAKE YOUR PRODUCT"
    p "=========================="
  end
end