require 'rails_helper'

feature 'user can add review and see the review on the restaurants page' do
  scenario 'User visits restaurant index page' do
    add_restaurant
    click_link "Add Review"
    fill_in 'review[rating]', with: 5
    fill_in 'review[comment]', with: "yum"
    click_button 'Save Review'
    expect(page).to have_content 'yum'
    expect(page).to have_content '5'
  end

  scenario "User must complete rating field" do
    add_restaurant
    click_link "Add Review"
    fill_in 'review[comment]', with: "yum food"
    click_button 'Save Review'
    expect(page).to have_content("Rating can't be blank")
  end

  scenario "User rating must be 5 or less" do
    add_restaurant
    click_link "Add Review"
    fill_in 'review[rating]', with: 6
    click_button 'Save Review'
    expect(page).to have_content("Rating must be less than or equal to 5")
  end

  scenario "User must complete comment field" do
    add_restaurant
    click_link "Add Review"
    fill_in 'review[rating]', with: 5
    click_button 'Save Review'
    expect(page).to have_content("Comment can't be blank")
  end

  scenario "User comment must be 5 characters or more" do
    add_restaurant
    click_link "Add Review"
    fill_in 'review[comment]', with: "yum"
    click_button 'Save Review'
    expect(page).to have_content("Comment is too short (minimum is 5 characters)")
  end



  
  


end
