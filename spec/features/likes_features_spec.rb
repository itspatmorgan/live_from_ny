require 'spec_helper'

# describe LikesController do
#   describe "creating a like" do
#     describe "starting on the articles index page" do
#       before do
#         @article = Article.create headline: "Man Bites Dog"
#         @user = User.create username: "pamorgan"
#         visit new_like_path
#       end
#       it 'can create a new like' do
#         select @article.headline, {:from => "article_id"}
#         select @user.username, {:from => "user_id"}

#         click_button 'submit'

#         @user.articles.should include @article
#       end
#     end
#   end
# end