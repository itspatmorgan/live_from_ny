class ArticlesController < ApplicationController

  # Route goes to articles index, which displays 10 articles that match user's query #
  def index
    @date_formatted = params[:date]
    array = @date_formatted.split("/")
    year = array.pop
    @date = array.unshift(year).join("")

    articles = HTTParty.get("http://api.nytimes.com/svc/search/v2/articlesearch.json?begin_date=#{@date}&end_date=#{@date}&fq=glocations:NEW%20YORK%20CITY&api-key=#{ENV['NYTIMES_SEARCH_KEY']}")

    @articles_hash = articles["response"]["docs"]
  end

  # Upon clicking 'like' button on articles index #
  # Should instantiate article in db, assign that article to current logged-in user #
  # and redirect to that user's show page. #
  def create
    @article = Article.create({
      headline: params[:headline],
      url: params[:url],
      lead_paragraph: params[:lead_paragraph],
      date: params[:date],
    })

    current_user.articles << @article

    redirect_to user_path(current_user)
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy
    redirect_to user_path(current_user)
  end
end



