require_relative '../spec_helper'

feature "Viewing player 2's Hit Points " do
	scenario "See Player 2's Hit Points" do
		sign_in_and_play
		expect(page).to have_content "Abdulla: 100 HP"
	end
end	
feature "Give a lose message when hit point of the losing player is 0" do
	scenario "See player 2 losing message" do
	sign_in_and_play
	19.times do
		click_button "Attack"
		click_button "Switch turns"
	end
	expect(page).to have_content "Abdulla loses"
	end
end
