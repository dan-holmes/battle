def sign_in_and_play
  visit("/")
  fill_in "player1", with: "Dan"
  fill_in "player2", with: "Otis"
  click_button "Submit"
end
