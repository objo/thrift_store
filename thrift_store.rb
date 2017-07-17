class Item

  MARKUP = .6
  TAX = .06

  attr_accessor :name, :cost, :seller

  def initialize(name, cost, seller)
    @name = name
    @cost = cost
    @seller = seller
    @sold = false
  end

  def price
    (@cost * MARKUP) + @cost
  end

  def price_with_tax
    (price * TAX) + price
  end

  def price_with_discount(discount)
    price_with_tax - (price_with_tax * discount)
  end

  def sell_item
    @sold = true
  end

  def sold?
    @sold
  end

end

class ListOfItems

end

class Register

end
