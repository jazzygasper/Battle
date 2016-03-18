
feature 'Main page' do

  scenario 'sees players' do
    sign_in_and_play
    expect(page).to have_text('Bob VS Tina')
  end

  scenario 'User sees HP' do
    sign_in_and_play
    expect(page).to have_text('Bob has')
    expect(page).to have_text('Tina has')
  end

end
