class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def signup_confirmation(user)
    @greeting = "Hi"
    @user = user

    mail to: user.email, subject: "Thank you for Signing Up!"
  end

  def posted_thank_you(user)
    @greeting = "Thanks for posting a question, we'll notify you by email when you get a reply."
    @user = user

    mail to: user.email, subject: "Thanks for asking a question!"
  end

  def answer_alert(post, comment)
    @comment = comment
    @post = post

    mail to: post.user.email, subject: "Someone has answered your question!"
  end
end
