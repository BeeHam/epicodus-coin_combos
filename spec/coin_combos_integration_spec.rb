require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin combo path', {:type => :feature}) do
  it('proccesses the user entry and returns their change') do
    visit('/')
    fill_in('coin_combos', :with => 76)
    click_button('Calculate')
    expect(page).to have_content('3 quarter(s) 1 pennies ')
  end
end
