class Customer < ApplicationRecord
    has_secure_password

    validates :name, presence: true
    validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :phone_number, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }
end
