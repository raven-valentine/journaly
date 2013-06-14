require 'spec_helper'

describe User do

  let(:user) { User.new(name: "Matt")}
  let(:user_two) { User.new(name: "")}
  let(:user_three) {User.create(name: "Matt")}

  it 'has a name' do
    user.should respond_to(:name)
  end

  it "when a name is not present" do
    user_two.should_not be_valid
  end

  # it "when name is already taken" do
  #   user_three.should_not be_valid
  # end

  context "security" do

    it "has a password digest" do
      user.should respond_to(:password_digest)
    end

    it "has a password" do
      user.should respond_to(:password)
    end

    it "has a password confirmation" do
      user.should respond_to(:password_confirmation)
    end

    it "password_confirmation should not be blank" do
      user.password = user.password_confirmation = " "
      user.should_not be_valid
    end

    it "password_confirmation should not be a mismatch" do
      user.password_confirmation = "mismatch"
      user.should_not be_valid
    end

  end

end