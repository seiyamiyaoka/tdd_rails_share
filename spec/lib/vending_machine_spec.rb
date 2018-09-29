describe VendingMachine do
  describe 'select' do
    it 'コーラが出てくる' do
      vm = VendingMachine.new
      expect(vm.select).to eq 'coke'
    end
  end
  describe 'coin' do
    it 'コインが入る' do
      vm = VendingMachine.new
      vm.insert(100)
      expect(vm.coin).to eq 100
    end
  end
end
