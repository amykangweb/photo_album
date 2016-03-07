require 'rails_helper'

RSpec.describe User, type: :model do
  it "should not be valid with wrong email" do
    user = FactoryGirl.build(:intruder)
    expect(user).not_to be_valid
  end

  it "should be valid with correct email" do
    user = FactoryGirl.build(:admin)
    expect(user).to be_valid
  end
end

