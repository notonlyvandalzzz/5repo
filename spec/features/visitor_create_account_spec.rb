require 'spec_helper'

feature "Account creation" do 
  before (:all) do
    sign_up
  end
  
  scenario "allows guest to create account" do
    

    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end
end

