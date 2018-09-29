require 'pry'

class Coin
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def valid?
    [500, 100, 50, 10].include?(value)
  end
end

class VendingMachine
  attr_reader :coin

  def select(item)
    return 'コインをいれてね' if @coins.size == 0
    item
  end

  def insert(coin)
    @coins = []
    if coin.valid?
      @coins << coin
    else
      coin
    end
  end

  def coin
    sum = 0
    @coins.each { |coin| sum += coin.value }
    sum
  end
end
