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

  scenario "the user should be able to sign up with valid information" do

    visit '/'
    click_on 'Sign up'

    fill_in 'user_username', with: 'FavoriteDog'
    fill_in 'user_email', with: 'dogs_best_day@gmail.com'
    fill_in 'user_password', with: '12345678'
    fill_in 'user_password_confirmation', with: '12345678'
    click_on 'Sign up'

    expect(page).to have_content 'Welcome! You have signed up successfully.'
    expect(page).to have_content 'Welcome, FavoriteDog.'

  end

end