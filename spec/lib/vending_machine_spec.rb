describe VendingMachine do
  let(:vending_machine) { VendingMachine.new }

  describe 'select' do
    context '100円が入っている場合'
      it 'コーラが出てくる' do
        vending_machine.insert(100)
        expect(vending_machine.select).to eq 'coke'
      end
    context '100円が入っていない場合' do
      it 'コインをいれてねと表示される' do
        expect(vending_machine.select).to eq 'コインをいれてね'
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
