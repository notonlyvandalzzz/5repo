require 'spec_helper'

feature "Feedback creation" do 
  scenario "allows access to feedback page" do
    visit '/feedbacks'

    expect(page).to have_content I18n.t('feedbacks.leave_feedback')
  end

  scenario "allow guest to create feedback" do
    visit '/feedbacks'
    fill_in :feedback_email, :with => '1234@vl.ru'
    fill_in :feedback_content, :with => 'Your site is awful'
    click_button 'Send message'
    expect(page).to have_content 'Thanks!'
  end
end
