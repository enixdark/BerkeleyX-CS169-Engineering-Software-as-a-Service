class Dessert
  attr_accessor :name,:calories
  # protected :name,:calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    @calories < 200 && self.delicious?
  end
  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    @flavor = flavor
    @calories = 5
    @name = flavor + " jelly bean"
  end

  def delicious?
    return false if @flavor == 'licorice'
    return true
  end
end
