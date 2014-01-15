class UsersController < ApplicationController

  # This route will be in production app #
  def show
    @user = User.find(params[:id])
  end
end