# frozen_string_literal: true

feature 'Testing infrastructure' do
  scenario 'Can run the app' do
    visit('/')
    expect(page).to have_content 'Hello!'
    expect(page).to have_content 'Enter your details below:'
  end
end
