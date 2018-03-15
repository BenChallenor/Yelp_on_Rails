feature "Delete a restaurant" do
  scenario "Opens a confirmation dialog box when deleting a restaurant" do
    add_restaurant
    click_on("Edit or delete restaurant")
    click_on("Delete restaurant")
    expect(page).not_to have_content("Flat iron")
  end
end