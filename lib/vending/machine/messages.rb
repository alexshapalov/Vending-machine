module Messages
  MESSAGE = {
    start: 'Please give me money',
    chose_product: 'Enter name of the prodcut. Example: Cola',
    not_enought: 'Please add money.',
    invalid_name: 'Please, use only valid name: Cola',
    no_product_selected: 'No product selected, please select the product',
    rules: 'Use only coins: 25 50 100 200 300',
    balance: 'Current balance:',
    do_not_have_change: 'We do now have a change',
    your_change: 'Take you change:'
  }.freeze

  def greeting
    p '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'
    p '@         WELCOME TO VANDING MASHINE!             @'
    p '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'
  end

  def first_meassage
    p MESSAGE[:chose_product]
    price_table
    p MESSAGE[:rules]
  end

  def price_table
    p '+--------+-------+'
    p '| Name   | Price |'
    p '+--------+-------+'
    p '| Cola   |  100  |'
    p '| Pepsi  |  200  |'
    p '| Sprite |  300  |'
    p '+-------+-------+'
  end

  def finish
    p '=========================='
    p 'THANKS! TAKE YOUR PRODUCT'
    p '=========================='
  end
end
