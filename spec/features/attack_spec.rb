require_relative '../spec_helper'

feature "Attack Player" do
	scenario "Attack Player 2" do
		sign_in_and_play
		click_button "Attack"
		expect(page).to have_content "Abdulla has been hit by Anna"
	end
	scenario "reduces player_2 HP by 10" do
		sign_in_and_play
		click_button "Attack"
		expect(page).to have_content "Abdulla: 90 HP"
	end
		scenario "reduces player_1 HP by 10" do
		sign_in_and_play
		click_button "Attack"
		click_button "Switch turns"
		click_button "Attack"
		expect(page).to have_content "Anna: 90 HP"
	end
end
