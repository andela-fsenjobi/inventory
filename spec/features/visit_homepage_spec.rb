require "rails_helper"

RSpec.feature "Visit Home Page" do
  scenario "expec to find rails" do
    visit root_path
    expect(page).to have_content "My Inventory"
    expect(page).to have_css "#search-input"
    expect(page).to have_css "#search-submit"
  end

  scenario "expec to find rails" do
    visit root_path

    fill_in "search-input", with: "femi"
    click_button "#search-submit"

    expect(page).to have_content "Femi"
  end
end
