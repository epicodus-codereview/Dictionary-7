require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the words path', {:type => :feature}) do
  it('allows a user to input a word') do
    visit('/')
    fill_in('word', :with => "Frowzy")
    click_button('Add')
    expect(page).to have_content("Frowzy")
  end
end
