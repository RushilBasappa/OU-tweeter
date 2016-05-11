class ApplicationMailer < ActionMailer::Base
  default from: "noreply@osmtweets.com"
  layout 'mailer'
end
