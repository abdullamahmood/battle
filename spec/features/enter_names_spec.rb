require_relative '../spec_helper'

RSpec.feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Anna'
    fill_in :player_2_name, with: 'Luke'
    click_button 'Submit'
    expect(page).to have_content 'Anna vs. Luke'
  end

  feature 'View hit points' do
    scenario 'see hit points for player two' do
      visit('/')
      fill_in :player_1_name, with: 'Anna'
      fill_in :player_2_name, with: 'Luke'
      click_button 'Submit'
      expect(page).to have_content 'Luke: 60HP'
    end
  end
end
