require "rails_helper"
require "pry"

RSpec.feature "Visit Home Page" do
  before(:each) do
   Product.create(name: "Femi", category: "Men")
  end

  scenario "expect to find My Inventory" do
    visit root_path
    expect(page).to have_content "My Inventory"
    expect(page).to have_css "#search-input"
    expect(page).to have_css "#search-submit"
  end

  scenario "when no match is found" do
    visit root_path

    fill_in "search-input", with: "leir ewo"
    click_button "search-submit"

    expect(page).to have_content "No matches found!"
  end
end
