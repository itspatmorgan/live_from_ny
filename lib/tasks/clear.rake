namespace :db do
  desc "Clear my database"
  task :clear => :environment do 
    User.delete_all
    Article.delete_all
    Like.delete_all
    Event.delete_all
    Attendance.delete_all
  end
end