def add_restaurant
visit('/restaurants/new')
fill_in 'restaurant[name]', with: 'Flat iron'
fill_in 'restaurant[description]', with: 'Steak house'
click_button 'Create Restaurant'
end

def test_restaurant
  fill_in 'restaurant[name]', with: 'Pizza Express'
  fill_in 'restaurant[description]', with: 'ok italian food'
end
