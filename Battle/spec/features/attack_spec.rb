feature 'Attack Player' do

  scenario 'deals blow' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_text("You have attacked Tina")
  end

  scenario 'goes back to play screen after attack' do
  	sign_in_and_play
    attacking
	expect(page).to have_text("Bob VS Tina")
  end

end
