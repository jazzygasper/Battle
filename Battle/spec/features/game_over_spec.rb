feature 'game over' do 

	scenario 'player 2 dies and the game ends' do
		allow(Kernel).to receive(:rand).and_return(10)
		sign_in_and_play
    	10.times {attacking}
    	click_button 'Attack!'
    	expect(page).to have_text("is now dead!")
	end
	
end