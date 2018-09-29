describe VendingMachine do
  let(:vending_machine) { VendingMachine.new }

  describe 'select' do
    it 'コーラが出てくる' do
      coin = Coin.new(100)
      vending_machine.insert(coin)
      expect(vending_machine.select('coke')).to eq 'coke'
    end
    it '烏龍茶ででてくる' do
      coin = Coin.new(100)
      vending_machine.insert(coin)
      expect(vending_machine.select('ウーロン茶')).to eq 'ウーロン茶'
    end

    context 'お金がないとき' do
      it 'コインをいれてねと表示される' do
        vending_machine.insert(Coin.new(5))
        expect(vending_machine.select('coke')).to eq 'コインをいれてね'
      end
    end
  end

  describe '#insert' do
    context '100を投入する場合' do
      it 'coinに100が入っていること' do
        coin = Coin.new(100)
        expect(vending_machine.insert(coin)).to eq([coin])
      end
    end
  end

  describe 'coin' do
    it 'コインが入る' do
      coin = Coin.new(100)
      vending_machine.insert(coin)
      expect(vending_machine.coin).to eq 100
    end
  end
end

describe Coin do
  it '有効なコインであること' do
    expect(Coin.new(500).valid?).to eq true
    expect(Coin.new(100).valid?).to eq true
    expect(Coin.new(50).valid?).to eq true
    expect(Coin.new(10).valid?).to eq true
  end

  it '無効なコインであること' do
    expect(Coin.new(1000).valid?).to eq false
    expect(Coin.new(5).valid?).to eq false
  end
end