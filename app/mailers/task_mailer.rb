class TaskMailer < ApplicationMailer

  def mail_update
    mail(to: 'mendelblesofsky@gmail.com', subject: 'Welcome to My Awesome Site')
  end
end
