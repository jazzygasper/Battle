require 'spec_helper'

feature "Player names" do
  scenario "Player enters names" do
    sign_in_and_play
    expect(page).to have_content("Player 1 HP: 30 vs Player 2 HP: 30")
  end
end
