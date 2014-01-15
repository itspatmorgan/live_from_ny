class ArticlesController < ApplicationController

  def index
    @date = params[:date]

    search_key = ENV['NYTIMES_SEARCH_KEY']
    articles = HTTParty.get("http://api.nytimes.com/svc/search/v2/articlesearch.json?begin_date=#{@date}&end_date=#{@date}&api-key=#{search_key}")
    @articles_hash = articles["response"]["docs"]
  end

  def create
    @article = Article.create({
      headline: params[:headline],
      url: params[:url],
      lead_paragraph: params[:lead_paragraph],
    })
    
    # @date = params[:date]
    # user = User.find(params[:id])
    # article = Article.find(params[:article_id])
    # @like = Like.create({
    #   user_id: 
    #   article_id:
    # })
    #redirect_to "/articles?date=#{@date}"
    redirect_to new_like_path
  end

  def show
    @article = Article.all
  end
end