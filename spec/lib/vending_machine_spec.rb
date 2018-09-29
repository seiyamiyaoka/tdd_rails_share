describe VendingMachine do
  let(:vending_machine) { VendingMachine.new }

  describe 'select' do
    it 'コーラが出てくる' do
      expect(vending_machine.select).to eq 'coke'
    end
  end
  describe 'coin' do
    it 'コインが入る' do
      vending_machine.insert(100)
      expect(vending_machine.coin).to eq 100
    end
  end
end
