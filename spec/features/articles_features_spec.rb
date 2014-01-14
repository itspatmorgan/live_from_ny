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
        articles_hash = HTTParty.get("http://api.nytimes.com/svc/search/v2/articlesearch.json?begin_date=#{@date}&end_date=#{@date}&api-key=#{search_key}")
        @url = articles_hash["response"]["docs"][0]["web_url"]
        @headline = articles_hash["response"]["docs"][0]["headline"]["main"]
        @lead_paragraph = articles_hash["response"]["docs"][0]["lead_paragraph"]
        current_path.should == articles_path
        page.should have_content(@date)
      end
    end
  end
end