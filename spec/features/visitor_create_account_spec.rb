require 'spec_helper'

feature "Account creation" do 
  scenario "allows guest to create account" do
    sign_up

    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end
end

def sign_up
    visit new_user_registration_path

    fill_in :user_email, :with => 'user@example.com'
    fill_in :user_username, :with => 'user_name_test'
    fill_in :user_password, :with => '123456ttt'
    fill_in :user_password_confirmation, :with => '123456ttt'

    click_button 'Sign up'
end
