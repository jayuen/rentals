class FormMailer < ActionMailer::Base
  def notification
    mail :to => 'jayuen@gmail.com', :subject => 'New rental application received', :from => 'a@a.com'
  end
end
