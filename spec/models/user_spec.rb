require 'rails_helper'

RSpec.describe User, type: :model do

  context "validations" do
    it "is invalid without a first_name" do
      user = User.new(last_name: "s", email: "email@email.com", password: "password", password_confirmation: "password")

      expect(user).to_not be_valid
    end
    it "is invalid without a last_name" do
      user = User.new(first_name: "a", email: "email@email.com", password: "password", password_confirmation: "password")

      expect(user).to_not be_valid
    end
    it "is invalid without an email" do
      user = User.new(last_name: "s", first_name: "A", password: "password", password_confirmation: "password")

      expect(user).to_not be_valid
    end
    it "is invalid without a password" do
      user = User.new(first_name: "a", last_name: "S", email: "email@email.com", password_confirmation: "password")

      expect(user).to_not be_valid
    end
    it "is valid with a first_name, last_name, email, and password" do
      user = User.new(first_name: "a", last_name: "S", email: "email@email.com", password: "password", password_confirmation: "password")

      expect(user).to be_valid
    end
  end
end
