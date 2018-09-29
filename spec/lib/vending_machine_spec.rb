describe VendingMachine do
  let(:vending_machine) { VendingMachine.new }

  describe 'select' do
    it 'コーラが出てくる' do
      vending_machine.insert(100)
      expect(vending_machine.select('coke')).to eq 'coke'
    end
    it '烏龍茶ででてくる' do
      vending_machine.insert(100)
      expect(vending_machine.select('ウーロン茶')).to eq 'ウーロン茶' 
    end

    context 'お金がないとき' do
      it 'コインをいれてねと表示される' do
        expect(vending_machine.select('coke')).to eq 'コインをいれてね'
      end
    end
  end

  describe '#insert' do
    context '100を投入する場合' do
      it 'coinに100が入っていること' do
        vending_machine.insert(100)
        expect(vending_machine.coin).to eq(100)
      end
    end
    context '100以外を投入する場合' do
      it 'coinがnilであること' do
        vending_machine.insert(500)
        expect(vending_machine.coin).to eq(nil)
      end
    end
  end

  describe 'coin' do
    it 'コインが入る' do
      vending_machine.insert(100)
      expect(vending_machine.coin).to eq 100
    end
  end
end
