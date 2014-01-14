require 'spec_helper'

describe LikesController do
  describe "Given an article" do
    before do
      @article = Article.create({
        headline: 'I am a headline',
        lead_paragraph: 'I am a lead paragraph',
        url: 'example.com',
      })
      @user = User.create(email: "pat@example.com", password: "password", username: "pat")
      sign_in @user
    end
    describe "Starting with a user on the articles index path" do
      before do
        visit articles_index_path
        click_button "like"
      end
      it "should create a like when button is clicked" do
        @user.reload.likes.first.article.should == @article
      end
      it "should show headline on user show page" do
        visit user_path(@user)
        page.should have_content(@article.headline)
      end
    end
  end
end