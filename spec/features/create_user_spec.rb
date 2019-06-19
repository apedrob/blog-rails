require 'rails_helper'

RSpec.feature "User Creation", type: :feature do
  scenario "Create a user with a valid name" do
    visit "/users/new"

    fill_in "Name", with: "Mellonz"
    click_button "Create User"

    expect(page).to have_text("Users")
    expect(page).to have_text("Mellonz")
  end
end
