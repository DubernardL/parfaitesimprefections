class Mailer < ActionMailer::Base

  layout 'mailer'

  def contact_form(contact)
    @contact = contact
    @to = "<parfaites-imperfections@outlook.com>"

    mail(to: @to, subject: "Nouveau contact") do |format|
      format.html
    end
  end

end
