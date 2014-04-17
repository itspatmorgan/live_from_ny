require 'spec_helper'

describe ArticlesController do
  describe "retrieve articles from the API" do
    context "starting on the home page with a given a date" do
      before do
        @date = 19900212
        visit root_path
      end
      it "returns articles from NYTIMES API based on that date" do
        fill_in :date, with: @date
        click_button "submit"
        
        search_key = ENV['NYTIMES_SEARCH_KEY']
        articles = HTTParty.get("http://api.nytimes.com/svc/search/v2/articlesearch.json?begin_date=#{@date}&end_date=#{@date}&api-key=#{search_key}")
        @articles_hash = articles["response"]["docs"]

        current_path.should == articles_path
        page.should have_content(@date)
        page.should have_content(@articles_hash[0]["headline"]["main"])
      end
    end
  end
  describe "logged-in user can save an article" do
    context "given a logged-in user and an article on the articles index path" do
      before do
        @user = User.create({
            email: 'pat@example.com', 
            password: 'password', 
            username: 'pat',
        })
        login_as @user
        @article = Article.create({
          headline: 'I am a headline',
          lead_paragraph: 'I am a lead paragraph',
          url: 'example.com',
        })
        @date = 19900212
        @index = 0
        visit "/articles?date=#{@date}"
        click_button "like_#{@index}"
      end
      it "creates a like when button is clicked" do
        @user.articles << @article
        @user.articles.should include Article.find(@article.id)
      end
      it "shows headline on user show page" do
        visit user_path(@user)
        page.should have_content(@article.headline)
      end
      end
    end
  end
end