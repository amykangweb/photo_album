require 'rails_helper'

RSpec.describe Post, type: :model do
  it "should not be valid without image" do
    post = FactoryGirl.build(:post, image: nil)
    expect(post).not_to be_valid
  end
end
