class UsersController < ApplicationController
  # This route for testing only #
  def index
    @user = User.all
  end
  
  # This route will be in production app #
  def show
    @user = User.find(params[:id])
  end
end