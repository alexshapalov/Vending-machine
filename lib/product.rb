module Product
  def all_products(name)
    case name 
    when 1 
      [cola: 100]
    when 2
      [pepsi: 200]
    when 3
      [fanta: 300]
    end
  end

  def valid_product?
    tovar = [1,2,3]
    tovar.include?(@product)
  end
end
