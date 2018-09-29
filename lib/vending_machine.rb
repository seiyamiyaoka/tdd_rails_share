class VendingMachine
  attr_reader :coin

  def select
    return 'coke' if @coin
    'コインをいれてね'
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
