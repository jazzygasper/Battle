require 'spec_helper'

feature 'switch turns' do
  scenario 'switches from player1 to player2' do
    sign_in_and_play
    click_button "Attack!"
    click_button "Switch turns!"
    expect(page).to have_content "Now it's Player 2's turn!"
  end
end
