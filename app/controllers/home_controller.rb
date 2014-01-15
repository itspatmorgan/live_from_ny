class HomeController < ApplicationController

  before_filter :authenticate_user!
  # If not signed in, Devise will prompt user to do so. #
  # If signed in, this route directs user to the home search page. #
  def index
  end
end