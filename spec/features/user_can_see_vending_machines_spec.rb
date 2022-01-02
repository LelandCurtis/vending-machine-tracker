require 'rails_helper'

RSpec.describe "When a user visits the vending machine index", type: :feature do
  scenario "they see a list of vending machine locations" do
    # original
    # sam = Owner.create(name: "Sam's Snacks")
    # sam.machines.create(location: "Don's Mixed Drinks")
    # sam.machines.create(location: "Turing Basement")

    # factorybot #1
    # sam = create(:owner, name: "Sam's Snacks")
    # create(:machine, owner: sam, location: "Don's Mixed Drinks")
    # create(:machine, owner: sam, location: "Turing Basement")

    # factorybot #2
    sam = create(:owner_with_machines, machine_count: 10)

    visit owner_machines_path(sam)
    
    expect(page).to have_content("Default Location 1")
    expect(page).to have_content("Default Location 10")
  end
end
