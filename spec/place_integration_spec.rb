require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set :show_exceptions, false

describe 'the place path', :type => :feature do
  before :each do
    visit '/'
  end

  it 'will display a form where the user can enter the name of a place' do
    expect(page).to have_selector 'form'
  end

  it 'will display an empty list of places' do
    expect(page).to have_selector 'ul'
    expect(page).not_to have_selector 'li'
  end
end
