require 'spec_helper'

feature "Feedback creation" do 
  scenario "allows access to feedback page" do
    visit '/feedbacks'

    expect(page).to have_content I18n.t('feedbacks.leave_feedback')
  end
end
