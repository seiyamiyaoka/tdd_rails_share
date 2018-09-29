describe VendingMachine do
  describe 'select' do
    it 'コーラが出てくる' do
      vm = VendingMachine.new
      expect(vm.select).to eq 'coke'
    end
  end
end
