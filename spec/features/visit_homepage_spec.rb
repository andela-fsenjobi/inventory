require "rails_helper"

RSpec.feature "Visit Home Page" do
  scenario "expec to find rails" do
    visit root_path
    expect(page).to have_content "My Inventory"
    expect(page).to have_css "#search-input"
    expect(page).to have_css "#search-submit"
  end
end
