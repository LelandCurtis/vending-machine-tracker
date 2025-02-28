require 'rails_helper'

RSpec.describe 'When a user visits a vending machine show page', type: :feature do
  scenario 'they see the location of that machine' do
    # original version
    # owner = Owner.create(name: "Sam's Snacks")
    # dons  = owner.machines.create(location: "Don's Mixed Drinks")

    # factorybot version
    owner = create(:owner, name: "Sam's Snacks")
    dons  = create(:machine, owner: owner, location: "Don's Mixed Drinks")

    visit machine_path(dons)

    expect(page).to have_content("Don's Mixed Drinks Vending Machine")
  end
end
