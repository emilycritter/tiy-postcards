class PostcardsMailer < ApplicationMailer
  def new_card(postcard)
    @postcard = postcard

    the_subject = "#{postcard.user.name} has sent you a postcard from postcards.com"
    mail to: postcard.email_recipient, subject: the_subject
  end
end
