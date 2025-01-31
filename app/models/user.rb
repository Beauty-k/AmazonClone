class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
  has_many :sessions, dependent: :destroy
  
  # normalizes :email_address, with: ->(e) { e.strip.downcase }
  has_secure_password


  before_save {self.email = email.downcase}
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+ @[a-z\d-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
  format: {with: VALID_EMAIL_REGEX}, uniqueueness: true
  validates :password, presence: true, length: {maximum: 6}

end
