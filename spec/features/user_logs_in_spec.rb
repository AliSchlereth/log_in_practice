require "rails_helper"

describe "user logs in" do
  context "they visit the login path" do
    it "logs in a user" do
      User.create(first_name: "A", last_name: "S", email: "email@email.com", password: "password", password_confirmation: "password")

      visit login_path

      fill_in "user[email]", with: "email@email.com"
      fill_in "user[password]", with: "password"

      expect(current_path).to eq(user_path(user))
      expect(page).to have_content("Welcome A S!")
    end
  end
end
