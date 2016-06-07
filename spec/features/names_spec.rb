#require "spec_helper"

feature 'Name input' do
  scenario 'Players enter their names' do
    visit '/'
    fill_in :player_1_name, with: 'Kasia'
    fill_in :player_2_name, with: 'Abdulla'
    click_button 'Submit'
    expect(page).to have_content 'Kasia vs. Abdulla'
  end
end