class Person < ApplicationRecord
    validates :fname, :lname, :email, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

    def full_name
        "#{fname} #{lname}"
      end
end
