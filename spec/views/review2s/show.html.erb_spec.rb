require 'rails_helper'

RSpec.describe "review2s/show", type: :view do
  before(:each) do
    @review2 = assign(:review2, Review2.create!(
      :rating => 2,
      :comment => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end
