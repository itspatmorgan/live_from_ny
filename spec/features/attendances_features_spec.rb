require 'spec_helper'

# describe AttendancesController do
#   describe "creating an attendance" do
#     describe "starting on the events index page" do
#       before do
#         @event = Event.create name: "Really Cool Broadway Show"
#         @user = User.create username: "pamorgan"
#         visit new_attendance_path
#       end
#       it 'can create a new attendance' do
#         select @event.name, {:from => "event_id"}
#         select @user.username, {:from => "user_id"}

#         click_button 'submit'

#         @user.events.should include @event
#       end
#     end
#   end
# end