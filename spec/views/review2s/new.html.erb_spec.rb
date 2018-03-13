require 'rails_helper'

RSpec.describe "review2s/new", type: :view do
  before(:each) do
    assign(:review2, Review2.new(
      :rating => 1,
      :comment => "MyText"
    ))
  end

  it "renders new review2 form" do
    render

    assert_select "form[action=?][method=?]", review2s_path, "post" do

      assert_select "input[name=?]", "review2[rating]"

      assert_select "textarea[name=?]", "review2[comment]"
    end
  end
end
