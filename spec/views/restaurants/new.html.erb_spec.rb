feature "Adding restaurant" do

  scenario "Page has content" do
    visit("/restaurants/new")
    expect(page).to have_content("Add a restaurant")
  end

  scenario "User can add a restaurant" do
    visit("/restaurants/new")
    fill_in "restaurant[name]", with: "Flat iron"
    fill_in "restaurant[description]", with: "Steak house"
    click_button "Save Restaurant"
    expect(page).to have_content("Flat iron")
  end

end