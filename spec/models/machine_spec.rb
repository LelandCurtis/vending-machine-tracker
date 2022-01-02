require 'rails_helper'

RSpec.describe Machine, type: :model do
  describe 'validations' do
    it { should validate_presence_of :location }
    it { should belong_to :owner }
    it { should have_many :machine_snacks }
    it { should have_many(:snacks).through(:machine_snacks)}
  end

  describe "instance methods" do
    describe 'avg_snack_price' do
      before :each do

      end

      it "returns the average snack price of all snacks in machine" do
        machine = create(:machine)

        snack_1 = create(:snack, price: 1.50)
        snack_2 = create(:snack, price: 2.50)
        snack_3 = create(:snack, price: 4.00)

        machine_snack_1 = create(:machine_snack, machine: machine, snack: snack_1)
        machine_snack_1 = create(:machine_snack, machine: machine, snack: snack_2)
        machine_snack_1 = create(:machine_snack, machine: machine, snack: snack_3)

        expect(machine.avg_snack_price).to eq(2.67)
      end

      it "returns nil if there are no snacks" do
        machine = create(:machine)

        expect(machine.avg_snack_price).to eq(nil)
      end
    end
  end
end
