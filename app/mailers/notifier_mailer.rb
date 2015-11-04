class NotifierMailer < ApplicationMailer
	default from: "jyffok@gmail.com"

	def notifier_email(member)
		@member = member
		mail(to: @member.email, subject: 'Sample Email')
	end
end
