class Contact
  attr_accessor :name, :email, :message
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend  ActiveModel::Naming

  validates :name, :email, :message, presence: true
  validates :email, :format => { :with => %r{.+@.+\..+} }, allow_blank: true


  def persisted?
    false
  end

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
end
