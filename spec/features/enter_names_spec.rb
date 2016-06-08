require_relative '../spec_helper'

feature "Enter Names" do
	scenario "submitting names" do
		visit("/")
		fill_in :player_1_name, with: "Anna"
		fill_in :player_2_name, with: "Abdulla"

		click_button "Submit"

		expect(page).to have_content "Anna vs. Abdulla"
	end

end
