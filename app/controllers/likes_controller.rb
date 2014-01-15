class LikesController < ApplicationController

  # These routes only for test purposes #
  # They shouldn't be in final app #

  def new
    @users = User.all
    @articles = Article.all
  end

  def create
    user = User.find(params[:user_id])
    article = Article.find(params[:article_id])

    Like.create({
    user: user,
    article: article,
    })

    redirect_to user_path(user)
  end
end