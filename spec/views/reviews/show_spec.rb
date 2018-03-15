require 'rails_helper'

feature 'user can click back to all reviews page' do
  xscenario 'viewing an individual review' do
    visit '/reviews'
    click_link "Add review"
    fill_in 'review[rating]', with: 5
    fill_in 'review[comment]', with: "yum"
    click_button 'Save Review'
    click_link 'Back to all reviews'
    expect(current_path).to eq('/reviews')
  end
end
