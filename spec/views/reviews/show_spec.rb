require 'rails_helper'

feature 'user can click back to all reviews page' do
   scenario 'viewing an individual review' do
    add_restaurant
    click_link "Add Review"
    fill_in 'review[rating]', with: 5
    fill_in 'review[comment]', with: "yum"
    click_button 'Save Review'
    expect(current_path).to eq('/restaurants/1')
  end
end
