MAIL_CONFIG = YAML.load_file("#{::Rails.root}/config/mailer.yml")
config = MAIL_CONFIG[::Rails.env].symbolize_keys
ActionMailer::Base.smtp_settings = {
  :address              => config[:address],
  :port                 => config[:port],
  :domain               => config[:domain],
  :user_name            => config[:user_name],
  :password             => config[:password],
  :authentication       => config[:authentication],
  :enable_starttls_auto => config[:enable_starttls_auto]  
}
