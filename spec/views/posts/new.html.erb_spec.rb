require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      :image => "MyString",
      :caption => "MyString"
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input#post_image[name=?]", "post[image]"

      assert_select "input#post_caption[name=?]", "post[caption]"
    end
  end
end
