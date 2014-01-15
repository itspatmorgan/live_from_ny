class EventsController < ApplicationController

  def search
    @date = params[:date]

    events_key = ENV['NYTIMES_EVENTS_KEY']
    events = HTTParty.get("http://api.nytimes.com/svc/events/v2/listings.json?date_range=#{@date}:#{@date}&api-key=#{events_key}")
    @events_hash = events["results"]
  end
end