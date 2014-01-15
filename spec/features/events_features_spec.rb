# require 'spec_helper'

# describe EventsController do
#   describe "Retrieve events from the API" do
#     describe "Starting on the Events search page, given a date" do
#       before do
#         @date = 19900212
#         visit root_path
#       end
#       it "can return articles from NYTIMES EVENTS API based on a given date and borough" do
#         fill_in :date, with: @date
#         click_button "submit"
        
#         events_key = ENV['NYTIMES_EVENTS_KEY']
#         events = HTTParty.get("http://api.nytimes.com/svc/events/v2/listings.json?date_range=#{@date}:#{@date}&filters=borough:(Manhattan%20Brooklyn)&api-key=#{events_key}")
#         @events_hash = events["results"]

#         current_path.should == events_path
#         page.should have_content(@date)
#         page.should have_content(@events_hash[0]["event_name"])
#       end
#     end
#   end
# end