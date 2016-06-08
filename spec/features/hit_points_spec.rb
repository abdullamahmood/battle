require_relative '../spec_helper'

feature "Viewing player 2's Hit Points " do
	scenario "See Player 2's Hit Points" do
		sign_in_and_play
		expect(page).to have_content "Abdulla: 100 HP"
	end

end
