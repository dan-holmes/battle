feature "Adding and displaying names" do
  scenario "Fill in two names in a form, submit the form and see the names on the screen" do
    sign_in_and_play
    expect(page).to have_content("Dan vs. Otis")
  end
end
# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points
feature "View hitpoints" do
  scenario "A player wants to view another players' hitpoints to see how close they are to winning" do
    sign_in_and_play
    expect(page).to have_content("Dan: 100 Hitpoints")
  end
end
