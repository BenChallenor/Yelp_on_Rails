require 'rails_helper'

RSpec.describe "review2s/index", type: :view do
  before(:each) do
    assign(:review2s, [
      Review2.create!(
        :rating => 2,
        :comment => "MyText"
      ),
      Review2.create!(
        :rating => 2,
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of review2s" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
