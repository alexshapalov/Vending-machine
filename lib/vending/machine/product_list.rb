module ProductList
  PRODUCTS = {
    Cola: 100, 
    Pepsi: 200,
    Fanta: 300,
  }

  INVALID_NAME = 'Please, use only valid name: Cola'.freeze

  def return_price_of_product(name)
    return puts INVALID_NAME until PRODUCTS.include?(name)
    PRODUCTS.fetch(name)
  end
end