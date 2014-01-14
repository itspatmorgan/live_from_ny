class ArticlesController < ApplicationController

  def index
    @date = params[:date]

    search_key = ENV['NYTIMES_SEARCH_KEY']
    articles = HTTParty.get("http://api.nytimes.com/svc/search/v2/articlesearch.json?begin_date=#{@date}&end_date=#{@date}&api-key=#{search_key}")
    @articles_hash = articles["response"]["docs"]
  
  end

end