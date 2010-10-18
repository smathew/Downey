class Emailer < ActionMailer::Base
  def loanapp_email(app)
    recipients  "smathew@shareone.com"
	#recipients  "ssmith@downeyfcu.org, cbissuett@downeyfcu.org; mgrande@downeyfcu.org, saaron@shareone.com"
	from        "web_services@shareone.com"
	subject     "Downey Loan Application"
	
	body :app => app
  end
  
  def tosender_email(email, content)
	recipients  email
	#recipients  "ssmith@downeyfcu.org, cbissuett@downeyfcu.org; mgrande@downeyfcu.org, saaron@shareone.com"
	from        "web_services@shareone.com"
	subject     "Message from Downey FCU"
	
	body 		content
  end
  
  def rfi_email(app)
    #Setting the content of the email
    recipients  "smathew@shareone.com"
	#recipients  "comments@downeyfcu.org, webapps@downeyfcu.org, phernandez@downeyfcu.org, saaron@shareone.com"
	from        "web_services@shareone.com"
	subject     "Request More Information"
	
	body :app => app
  end
  
  def contact_email(app)
    #Setting the content of the email
    recipients  "smathew@shareone.com"
	#recipients  "comments@downeyfcu.org, saaron@shareone.com"
	from        "webform@downeyfcu.org"
	subject     "DFCU Website Contact Form"
	
	body :app => app
  end
end
