class FormMailer < ActionMailer::Base
  def notification
    mail :to => MAIL_CONFIG[:destination], :subject => 'New rental application received', :from => config[:user_name]
  end
end
