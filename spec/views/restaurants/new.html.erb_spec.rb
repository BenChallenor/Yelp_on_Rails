feature "Adding restaurant" do
  scenario "Add restaurant" do
    visit("/restaurant/new")
    expect(page).to have_content("Add restaurant")
  end
end