class UserMailer < ActionMailer::Base

  default :from => "cbnetwork123@gmail.com"

  def approve_user_profile(user)
    @user = {
      :email => user.email,
      :name => user.name,
    }
    mail to: user.email, subject: "CbNetwork approved."
  end
end