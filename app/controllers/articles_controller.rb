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
    # redirect_to "/articles?date=#{@date}"

    article = @article.id
    user = User.find(session["warden.user.user.key"][1][0])
    like = Like.create({
      user: user,
      article: article,
    })
    redirect_to user_path(user)
  end

  def show
    @article = Article.all
  end
end