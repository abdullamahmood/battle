require_relative '../spec_helper'

feature "Switching turns" do
	scenario "Switches to player 2" do
		sign_in_and_play
		click_button "Attack"
		click_button "Switch turns"
		expect(page).to have_content "Anna: 100 HP"
	end

	scenario "display the name of the current player" do
		sign_in_and_play
		click_button "Attack"
		click_button "Switch turns"
		expect(page).to have_content "The current player is Abdulla"
	end


end