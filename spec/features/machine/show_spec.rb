require 'rails_helper'

RSpec.describe 'machine show page' do
  it "shows all of the snacks associated with the vening machine" do
    machine = create(:machine_with_snacks, snack_count: 3)

    visit "/machines/#{machine.id}"

    expect(page).to have_content("Default Snack Name 1")
    expect(page).to have_content("Default Snack Name 2")
    expect(page).to have_content("Default Snack Name 3")
  end

  it "shows all of the prices associated with each snack rounded to 2 digits" do
    machine = create(:machine_with_snacks, snack_count: 3)
    visit "/machines/#{machine.id}"

    expect(page).to have_content("$1.11")
    expect(page).to have_content("$2.11")
    expect(page).to have_content("$3.11")
  end
end
