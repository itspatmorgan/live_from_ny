class ArticlesController < ApplicationController

  def index
    # search_key = ENV['NYTIMES_SEARCH_KEY']
    # articles_hash = HTTParty.get("http://api.nytimes.com/svc/search/v2/articlesearch.json?begin_date=#{@date}&end_date=#{@date}&api-key=#{search_key}")
    # @url = articles_hash["response"]["docs"][0]["web_url"]
    # @headline = articles_hash["response"]["docs"][0]["headline"]["main"]
    # @lead_paragraph = articles_hash["response"]["docs"][0]["lead_paragraph"]
    @date = params[:date]
  end

end