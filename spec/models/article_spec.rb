require 'spec_helper'

describe Article do 
  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:text) }
  end
  describe "associations" do
    it { should have_many(:comments) }
    it { should belong_to(:user) }
  end

  describe "#subject" do
    it "returns article title" do
      tmpuser = create(:user, id: 1, username: 'John', email: '123@45.com', password: '123444332111')
      article = create(:article, title: 'Hello world', text: 'Some text', user: User.find(1))
      expect(article.subject).to eq 'Hello world'
    end
  end

end
