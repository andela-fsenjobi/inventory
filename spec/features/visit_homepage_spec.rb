require "rails_helper"

RSpec.feature "Visit Home Page" do
  scenario "expec to find rails" do
    visit "/"
    expect(page).to have_content "Rails"
  end
end
