require_relative '../spec_helper'

feature "Viewing player 2's Hit Points " do
	scenario "See Player 2's Hit Points" do
		visit("/")
		fill_in :player_1_name, with: "Anna"
		fill_in :player_2_name, with: "Abdulla"

		click_button "Submit"

		expect(page).to have_content "Abdulla: 100 HP"
	end

end