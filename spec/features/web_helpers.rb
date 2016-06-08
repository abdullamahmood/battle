def sign_in_and_play
  visit("/")
  fill_in :player_1_name, with: "Anna"
  fill_in :player_2_name, with: "Abdulla"

  click_button "Submit"
end
