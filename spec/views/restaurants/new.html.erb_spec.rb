feature 'Adding restaurant' do
  scenario 'Page has content' do
    visit('/restaurants/new')
    expect(page).to have_content('Add a restaurant')
  end

  scenario 'User can add a restaurant' do
    visit('/restaurants/new')
    fill_in 'restaurant[name]', with: 'Flat iron'
    fill_in 'restaurant[description]', with: 'Steak house'
    click_button 'Save Restaurant'
    expect(page).to have_content('Flat iron')
  end

  scenario 'User must complete name field' do
    visit('/restaurants/new')
    fill_in 'restaurant[description]', with: 'Steak house'
    click_button 'Save Restaurant'
    expect(page).to have_content("Name can't be blank")
  end

  scenario 'User must complete description field' do
    visit('/restaurants/new')
    fill_in 'restaurant[name]', with: 'Flat iron'
    click_button 'Save Restaurant'
    expect(page).to have_content("Description can't be blank")
  end

  scenario 'User must add at least 2 characters in the name field' do
    visit('/restaurants/new')
    fill_in 'restaurant[name]', with: 'F'
    click_button 'Save Restaurant'
    expect(page).to have_content("Name is too short (minimum is 2 characters)")
  end

  scenario 'User must add at least 10 characters in the description field' do
    visit('/restaurants/new')
    fill_in 'restaurant[description]', with: 'F'
    click_button 'Save Restaurant'
    expect(page).to have_content("Description is too short (minimum is 10 characters)")
  end

end
