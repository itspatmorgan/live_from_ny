require 'spec_helper'

describe ArticlesController do
  describe "Retrieve articles from the API" do
    describe "Starting on the home page and given a date" do
      before do
        @date = 19900212
        visit root_path
      end
      it "can return articles from NYTIMES API based on a given date" do
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
    describe "Given a logged-in user and an article" do
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
      end
      describe "Starting with a user on the articles index path" do
        before do
          @date = 19900212
          @index = 0
          visit "/articles?date=#{@date}"
          click_button "like_#{@index}"
        end
        it "should create a like when button is clicked" do
          @user.articles << @article
          @user.articles.should include Article.find(@article.id)
        end
        it "should show headline on user show page" do
          visit user_path(@user)
          page.should have_content(@article.headline)
        end
      end
    end
  end
end