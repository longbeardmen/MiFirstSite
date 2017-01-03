class CommentsMailer < ActionMailer::Base
  default from: "isitemailer@gmail.com"

  def welcome_email(email)
    @email = email
    @url  = 'https://vk.com/id204658145'
    mail(to: @email, subject: 'Welcome to My Awesome Site')
  end
end
