desc "This task is called by the Heroku scheduler add-on"
task :update_records => :environment do
    puts "Updating records..."
    User.update_records
    puts "done."
end

