# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

config.action_mailer.default_url_options = { host: 'https://parfaites-imperfections.herokuapp.com/' }
config.action_mailer.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
  :user_name => ENV["SENDGRID_USERNAME"],
  :password => ENV["SENDGRID_PASSWORD"],
  :domain => 'herokuapp.com',
  :address => 'smtp.sendgrid.net',
  :port => 465,
  :authentication => :plain,
  :enable_starttls_auto => true
}
