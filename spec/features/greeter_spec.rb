# frozen_string_literal: true

feature 'Wishes a user' do
  scenario 'if their birthday is today' do
    visit_and_input_name
    fill_in :persons_bday, with: '07/12'
    click_button 'Go'
    # expect(page).to have_content "Happy Birthday!"
  end

  scenario 'if their birthday is at a later date' do
    visit_and_input_name
    fill_in :persons_bday, with: '09/12'
    click_button 'Go'
    # expect(page).to have_content "Your birthday is in 3 months"
  end
end
