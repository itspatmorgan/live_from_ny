# require 'spec_helper'

# describe LikesController do
#   describe "Given a logged-in user and an article" do
#     before do
#       @user = User.create({
#           email: 'pat@example.com', 
#           password: 'password', 
#           username: 'pat',
#       })
#       login_as @user
#       @article = Article.create({
#         headline: 'I am a headline',
#         lead_paragraph: 'I am a lead paragraph',
#         url: 'example.com',
#       })
#     end
#     describe "Starting with a user on the articles index path" do
#       before do
#         @date = 19900212
#         @index = 0
#         visit "/articles?date=#{@date}"
#         click_button "like_#{@index}"
#       end
#       it "should create a like when button is clicked" do
#         @user.articles << @article
#         @user.articles.should include Article.find(@article.id)
#       end
#       it "should show headline on user show page" do
#         visit user_path(@user)
#         page.should have_content(@article.headline)
#       end
#     end
#   end
# end