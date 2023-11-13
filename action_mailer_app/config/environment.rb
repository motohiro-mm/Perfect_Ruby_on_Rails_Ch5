# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

Rails.application.configure do
  config.action_mailer.smtp_settings = {
    user_name: Rails.application.credentials.smtp_user_name,
    password: Rails.application.credentials.smtp_password,
    domain: 'perfect_rails@example.com',
    address: 'smtp.mailgun.org',
    port: 587,
    authentication: :plain,
    enable_starttls_auto: true
  }
end
