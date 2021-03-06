require 'spec_helper'

describe Article do 
  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:text) }
    it do 
      should validate_length_of(:text).
      is_at_least(5).is_at_most(4000)
    end 
    it do 
      should validate_length_of(:title).
      is_at_least(1).is_at_most(140)
    end 
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

  describe "#last_comment" do
    it "returns last comment" do
      tmpuser = create(:user, id: 2, username: 'John2', email: '123@456.com', password: '123444332111')
      article = create(:article, title: 'Hello world', text: 'Some text', user: User.find(2))
      comm1 = create(:comment, author: 'one', body: 'oneone', article: Article.last)
      comm2 = create(:comment, author: 'two', body: 'twotwo', article: Article.last)
      expect(article.last_comment.body).to eq 'twotwo' 
    end
  end

end
