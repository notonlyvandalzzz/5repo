require 'spec_helper'

feature "Article creation" do 
  before (:each) do
    sign_up
  end

  scenario "allows user to visit new article page" do
    visit new_article_path


    expect(page).to have_content ('New article')
  end

  scenario "allows user to post article" do
    visit new_article_path
    fill_in :article_title, :with => 'test_article_title'
    fill_in :article_text, :with => 'test_article_text'
    click_button 'Save Article'
    expect(page).to have_content ('test_article_title')
  end

  scenario "allows user to post article and leave comment" do
    visit new_article_path
    fill_in :article_title, :with => 'test_article_title'
    fill_in :article_text, :with => 'test_article_text'
    click_button 'Save Article'
    fill_in :comment_body, :with => 'test_comment_text'
    click_button 'Send'
    expect(page).to have_content ('test_comment_text')
  end
end

