require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set :show_exceptions, false

describe 'the place path', :type => :feature do
  it 'will display a form where the user can enter the name of a place' do
    visit '/'
    expect(page).to have_selector 'form'
  end
end
