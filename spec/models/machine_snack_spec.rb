require 'rails_helper'

RSpec.describe MachineSnack, type: :model do
  it {should belong_to :snack}
  it {should belong_to :machine}
end
