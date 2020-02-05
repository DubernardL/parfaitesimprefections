class Contact < MailForm::Base
  attribute :name
  validates :name, presence: true

  attribute :email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

  attribute :message
  validates :message, presence: true

  def headers
    {
      :subject => "Contact Form",
      :to => "parfaites-imperfections@outlook.com",
      :from => %("<#{name}>" <#{email}>)
    }
  end
end
