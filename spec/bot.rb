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
  module Login
      visit '/'
      fill_in 'user_email', with: 'averagejoe@test.com'
      fill_in 'user_password', with: '12345678'
      click_on 'Log in'
  end
end