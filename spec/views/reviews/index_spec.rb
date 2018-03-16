require 'rails_helper'

feature 'user can add review and see the review on the restaurants page' do
  scenario 'User visits restaurant index page' do
    visit("/restaurants/new")
    fill_in "restaurant[name]", with: "Flat iron"
    fill_in "restaurant[description]", with: "Steak house"
    click_button "Create Restaurant"
    click_link "Back to restaurant listings"
    click_link "Show"
    click_link "Add Review"
    fill_in 'review[rating]', with: 5
    fill_in 'review[comment]', with: "yum"
    click_button 'Save Review'
    expect(page).to have_content 'yum'
    expect(page).to have_content '5'
  end

end
