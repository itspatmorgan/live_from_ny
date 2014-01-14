require 'spec_helper'

# describe UsersController do
#   describe "When not logged in" do
#     it "should redirect to users index" do
#        get :index
#           response.should redirect_to(new_user_session_path)
#        end
#     end
#     describe "When logged in" do
#        before do
#           sign_in @user
#        end
#        it "should list the users on users index" do
#           get :index
#           assigns(:users).should == [@user]
#        end
#     end
#   end
# end