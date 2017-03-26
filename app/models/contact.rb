class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)`[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class Contact < ActiveRecord::Base
	validates :name, presence: true, length: {in: 2..25}
	validates :email, presence: true, email: true
	validates :message, presence: true, length: {in: 5..250}
end
