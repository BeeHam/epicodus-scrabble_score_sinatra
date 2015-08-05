require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble score path', {:type => :feature}) do
  it('processes the user entry and returns their scrabble score') do
    visit('/')
    fill_in('score', :with => 'word')
    click_button('Send')
    expect(page).to have_content(8)
  end

  it('can return users to index from scrabble score page') do
    visit('/score?score=word')
    click_link('Return')
    expect(page).to have_content('Welcome to your Scrabble score calculator!')
  end
end
