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
end
