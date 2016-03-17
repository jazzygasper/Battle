require 'spec_helper'

feature "Attacking a player" do
  scenario "Get confirmation when player 1 attacks player 2" do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content("Player 1 attacks Player 2")
  end

  scenario "Get confirmation when player 2 attacks player 1" do
    sign_in_and_play
    click_button "Attack!"
    click_button "Switch turns!"
    click_button "Attack!"
    expect(page).to have_content("Player 2 attacks Player 1")
  end

  # scenario "Get confirmation that player 2 has lost" do
  #   sign_in_and_play
  #   6ruby.times do click_button "Attack!"
  #   click_button "Switch turns!"
  #   end
  #   click_button "Attack!"
  #   expect(page).to have_content("Player 2 loses")
  # end
end
