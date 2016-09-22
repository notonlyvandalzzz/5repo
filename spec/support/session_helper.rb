def sign_up
    visit new_user_registration_path

    fill_in :user_email, :with => 'user33@example.com'
    fill_in :user_username, :with => 'user_name_test'
    fill_in :user_password, :with => '123456ttt'
    fill_in :user_password_confirmation, :with => '123456ttt'

    click_button 'Sign up'
end
