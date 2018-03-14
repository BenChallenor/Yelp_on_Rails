feature 'Editing a restaurant' do
  scenario 'User can edit a restaurant on restaurant page' do
    add_restaurant
    click_on('Edit restaurant')
    test_restaurant
    click_button('Update Restaurant')
    click_on('Back to restaurant listings')
    expect(page).to have_content('Pizza Express')
    expect(page).to have_content('ok italian food')
  end

  scenario 'User can edit a restaurant from the listings page' do
    add_restaurant
    visit('/')
    click_on('Edit')
    test_restaurant
    click_button('Update Restaurant')
    click_on('Back to restaurant listings')
    expect(page).to have_content('Pizza Express')
    expect(page).to have_content('ok italian food')
  end
end
