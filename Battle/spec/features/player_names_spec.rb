require 'spec_helper'

RSpec.feature "Player names" do
  scenario "Player enters names" do
    sign_in_and_play
    expect(page).to have_content("Player 1 vs Player 2")
  end
end
