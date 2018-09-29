class VendingMachine
  attr_reader :coin

  def select
    return 'coke' if @coin
    'コインをいれてね'
  end

  def insert(coin)
    @coin = coin
  end

  def coin
    @coin
  end
end
