require "rails_helper"

describe "user creates an account" do
  context "they visit the user new path" do
    it "enter user information" do
      visit new_user_path

      fill_in "First Name", with: "A"
      fill_in "Last Name", with: "S"
      fill_in "Password", with: "password"
      fill_in "Password Confirmation", with: "password"
      click_on "Submit"

      expect(page).to have_content("Welcome A S!")
    end
  end
end
