# Preview all emails at http://localhost:3000/rails/mailers/notifier_mailer
class NotifierMailerPreview < ActionMailer::Preview
	def notifier_mail_preview
    NotifierMailer.notifier_email(Member.first)
  end
end
