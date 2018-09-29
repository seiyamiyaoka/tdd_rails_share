class Dollar
  attr_reader :amount
  def initialize(amount)
    @amount = amount
  end

  def times(multipler)
    Dollar.new(amount * multipler)
  end
end
