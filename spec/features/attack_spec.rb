require_relative '../spec_helper'

feature "Attack Player 2 " do
	scenario "Attack Player 2" do
		sign_in_and_play
		click_button "Attack"
		expect(page).to have_content "Abdulla has been hit by Anna"
	end

end