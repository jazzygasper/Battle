require 'capybara'
require 'spec_helper'

feature "attack!" do
  scenario "attacks opponent" do
    sign_in_and_play
    click_button("attack!")
    expect(page).to have_content "ass attacked boob!"
  end

  scenario "switch turns" do
    sign_in_and_play
    click_button("attack!")
    click_button("switch turns!")
    expect(page).to have_content "ass vs. boob"
  end
end
