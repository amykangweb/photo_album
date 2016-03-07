require 'rails_helper'

RSpec.describe Post, type: :model do
  it "should not be valid without image" do
    post = FactoryGirl.build(:post, image: nil)
    expect(post).not_to be_valid
  end

  it "should not be valid without caption" do
    post = FactoryGirl.build(:post, caption: nil)
    expect(post).not_to be_valid
  end

  it "should be valid with both image and caption" do
    post = FactoryGirl.build(:post)
    expect(post).to be_valid
  end
end
