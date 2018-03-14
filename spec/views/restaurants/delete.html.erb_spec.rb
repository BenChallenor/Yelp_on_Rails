feature "Delete a restaurant" do

  scenario "Delete restaurant on restaurant listings page" do
    add_restaurant
    click_on("Edit or delete restaurant")
    click_on("Delete restaurant")
    # page.driver.browser.switch_to.alert.accept
    # page.accept_confirm { click_button "OK"}
    # expect(page).not_to have content("Flat iron")
    expect(page.driver.alert_messages.last).to eq "Are you sure?"
    end

end