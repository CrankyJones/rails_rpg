require 'rails_helper'

context "user sign-up process" do
  scenario "the user should be prompted to login from the home page if they are not logged in" do
    visit '/'
    expect(page).to have_content 'Log in'
  end
  scenario "the user should be able to navigate to the sign up from this page" do
    visit '/'
    click_on 'Sign up'
    expect(page).to have_content 'Password confirmation'
  end
  
end