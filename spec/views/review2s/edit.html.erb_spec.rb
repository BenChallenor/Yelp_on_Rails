require 'rails_helper'

RSpec.describe "review2s/edit", type: :view do
  before(:each) do
    @review2 = assign(:review2, Review2.create!(
      :rating => 1,
      :comment => "MyText"
    ))
  end

  it "renders the edit review2 form" do
    render

    assert_select "form[action=?][method=?]", review2_path(@review2), "post" do

      assert_select "input[name=?]", "review2[rating]"

      assert_select "textarea[name=?]", "review2[comment]"
    end
  end
end
