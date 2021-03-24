require 'rails_helper'

context "user log-in process" do
  scenario "the user should be prompted to login from the home page if they are not logged in" do
    visit '/'
    expect(page).to have_content 'Log in'
  end
  
end