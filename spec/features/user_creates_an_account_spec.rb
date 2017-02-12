require "rails_helper"

describe "user creates an account" do
  context "they visit the user new path" do
    it "enter user information" do
      visit new_user_path

      fill_in "user[first_name]", with: "A"
      fill_in "user[last_name]", with: "S"
      fill_in "user[email]", with: "email@email.com"
      fill_in "user[password]", with: "password"
      fill_in "user[password_confirmation]", with: "password"
      click_on "Create User"

      expect(page).to have_content("Welcome A S!")
    end
  end
end
