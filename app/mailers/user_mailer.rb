class UserMailer < ApplicationMailer
default from: "masenmatthews@gmail.com"

  def signup_confirmation(user)
    @user = user
    mail to: user.email, subject: "Thanks for signing up!"
  end
end
