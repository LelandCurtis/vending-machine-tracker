require 'rails_helper'

RSpec.describe 'machine show page' do
  it "shows all of the snacks associated with the vening machine" do
    machine = create(:machine_with_snacks, snack_count: 3)

    visit "/machines/#{machine.id}"

    machine.snacks.each do |snack|
      expect(page).to have_content(snack.name)
    end
  end

  it "shows all of the prices associated with each snack rounded to 2 digits" do
    machine = create(:machine_with_snacks, snack_count: 3)

    visit "/machines/#{machine.id}"

    machine.snacks.each do |snack|
      expect(page).to have_content("$#{snack.price}")
    end
  end

  it "shows the average price of all the snacks in that machine" do
    machine = create(:machine_with_snacks, snack_count: 3)

    visit "/machines/#{machine.id}"
    expect(page).to have_content("Average Snack Price: $#{machine.avg_snack_price}")
  end
end
