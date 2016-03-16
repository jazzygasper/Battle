require 'capybara'
require 'spec_helper'

feature 'switch players' do
  scenario 'starts with player 1 turn' do
    sign_in_and_play
    expect(page).to have_content "It's ass's turn"
  end

  scenario 'switches to player 2 turn' do
    sign_in_and_play
    click_button("attack!")
    click_button("switch turns!")
    expect(page).to have_content "It's boob's turn"
  end
end
