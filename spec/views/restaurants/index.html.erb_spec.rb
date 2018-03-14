require 'rails_helper'
# require 'capybara/rspec'

# RSpec.describe "restaurant/index.html.erb", type: :view do
#   visit "/"
#   expect(page).to have_content("Restaurant listings")
# end


describe "Testing infrastructure" do
  scenario "App loads and content is displayed" do
    visit("/restaurants")
    expect(page).to have_content("Restaurant listings")
  end
end