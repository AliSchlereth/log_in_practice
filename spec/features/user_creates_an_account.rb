require "rails_helper"

describe "user creates an account" do
  context "they visit the user new path" do
    it "enter user information" do
      visit new_user_path

      fill_in ""
    end
  end
end
