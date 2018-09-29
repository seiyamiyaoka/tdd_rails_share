class VendingMachine
  attr_reader :coin

  def select(item)
    return 'コインをいれてね' unless @coin
    item
  end

  def insert(coin)
    if coin == 100
      @coin = coin
    else
      nil
    end
  end

  def coin
    @coin
  end
end
