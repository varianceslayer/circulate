class MemberMailer < ApplicationMailer
  def welcome_message
    @member = params[:user]
    @intro = "Welcome\nto the\nlibrary"
    @title = "Welcome to The Chicago Tool Library"
    mail(to: @member.email, subject: @title)
  end
end
