require 'rails_helper'

context "authentication roles through user tiers" do

  before :each do
    # normal user
    User.create(
      username: 'averageUser',
      email: 'averagejoe@test.com',
      password: '12345678',
      password_confirmation: '12345678'
    )
    # admin
    User.create(
      username: 'adminUser',
      email: 'adminjoe@test.com',
      password: '12345678',
      password_confirmation: '12345678',
      admin: true
    )
  end

  scenario "an authorized user set to admin should be able to view secured pages" do

    visit '/'
    fill_in 'user_email', with: 'adminjoe@test.com'
    fill_in 'user_password', with: '12345678'
    click_on 'Log in'
    visit '/admin'

    expect(page).to have_content 'adminjoe@test.com'
    expect(page).to have_content 'Site Administration'

  end

  scenario "an authorized user set to admin should be able to view secured pages" do

    visit '/'
    fill_in 'user_email', with: 'averagejoe@test.com'
    fill_in 'user_password', with: '12345678'
    click_on 'Log in'
    visit '/admin'

    expect(page).to have_no_content 'averagejoe@test.com'
    expect(page).to have_no_content 'Site Administration'

  end

end