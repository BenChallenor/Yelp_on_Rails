require 'rails_helper'

feature 'user can add review and see the review on the restaurants page' do
  xscenario 'User visits restaurant index page' do
    visit '/restaurants'
    click_button "restaurant 1"
    click_button "Add review"
    fill_in 'rating', with: 5
    fill_in 'comment', with: "yum"
    click_button 'Submit review'
    expect(page).to have_content 'Comment: yum'
    expect(page).to have_content 'Rating: 5'
  end

  scenario 'User visits reviews index page' do
    visit '/reviews'
    click_link "Add review"
    fill_in 'review[rating]', with: 5
    fill_in 'review[comment]', with: "yum"
    click_button 'Save Review'
    expect(page).to have_content 'Comment: yum'
    expect(page).to have_content 'Rating: 5'
  end
end
