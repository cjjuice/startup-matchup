#set facebook app ID and secret
ENV['FACEBOOK_APP_ID'] = '113351525479090'
ENV['FACEBOOK_APP_SECRET'] = '7e9b5dfe60bde6f812525886cc662041'

config.action_mailer.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
  :address  => "mail.startupmatchup.org",
  :port  => 26,
  :user_name  => 'no-reply@startupmatchup.org',
  :password  => 'nlC38oJ@v=o3',
  :authentication  => :login
}

config.action_mailer.raise_delivery_errors = true

# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
StartupMatchup::Application.initialize!



