require 'rails_helper'

describe "view locations process" do

  it "leads to a view of the location index" do

    User.create(
      username: 'averageUser',
      email: 'averagejoe@test.com',
      password: '12345678',
      password_confirmation: '12345678'
    )

    Location.create(
      name: "The Stairs",
      description: "A creepy place that incrementally gets taller."
    )

    visit '/'

    fill_in 'user_email', with: 'averagejoe@test.com'
    fill_in 'user_password', with: '12345678'
    click_on 'Log in'

    click_on 'Locations'

    expect(page).to have_content("The Stairs")

  end

end
