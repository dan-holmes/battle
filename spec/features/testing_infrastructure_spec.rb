feature "Adding and displaying names" do
  scenario "Fill in two names in a form, submit the form and see the names on the screen" do
    visit("/")
    fill_in "player1", with: "Dan"
    fill_in "player2", with: "Otis"
    click_button "Submit"
    expect(page).to have_content("Dan vs. Otis")
  end
end
