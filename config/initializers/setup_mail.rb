MAIL_CONFIG = {}

config_hash = YAML.load_file("#{::Rails.root}/config/mailer.yml")
env = config_hash[::Rails.env]

if env == 'development'
  MAIL_CONFIG = env.symbolize_keys
  ActionMailer::Base.smtp_settings = {
    :address              => MAIL_CONFIG[:address],
    :port                 => MAIL_CONFIG[:port],
    :domain               => MAIL_CONFIG[:domain],
    :user_name            => MAIL_CONFIG[:user_name],
    :password             => MAIL_CONFIG[:password],
    :authentication       => MAIL_CONFIG[:authentication],
    :enable_starttls_auto => MAIL_CONFIG[:enable_starttls_auto]  
  }
end
