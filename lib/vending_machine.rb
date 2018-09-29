class VendingMachine
  attr_reader :coin

  def select
    'coke'
  end

  def insert(coin)
    @coin = coin
  end

  def coin
    @coin
  end
end
