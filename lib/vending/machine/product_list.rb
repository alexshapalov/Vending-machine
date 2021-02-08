module ProductList
  PRODUCTS = {
    Cola: 100, 
    Pepsi: 200,
    Fanta: 300,
  }

  def return_price_of_product(name)
    return "false" until PRODUCTS.include?(name)
    PRODUCTS.fetch(name)
  end
end