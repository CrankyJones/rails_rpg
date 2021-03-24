require 'rails_helper'

describe "view locations process" do

  scenario "the user can view the individual location when clicking on the location link" do
    module Bot
      module Create
        module Bot
          User.create(
            username: 'averageUser',
            email: 'averagejoe@test.com',
            password: '12345678',
            password_confirmation: '12345678'
          )
        end
        module Place
          Location.create(
            name: "The Stairs",
            description: "A creepy place that incrementally gets taller."
          )
        end
      end
    end
    Bot::Create::Bot
    Bot::Create::Place

    visit '/'
    fill_in 'user_email', with: 'averagejoe@test.com'
    fill_in 'user_password', with: '12345678'
    click_on 'Log in'
    click_on 'Locations'
    click_on 'The Stairs'
    expect(page).to have_content "A creepy place that incrementally gets taller."

  end

end
