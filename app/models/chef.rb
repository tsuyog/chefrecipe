class Chef < ActiveRecord::Base
  has_many :recipes
  before_save { self.email = email.downcase }
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :username, presence: true, length: { minimum: 5, maximum:10 }
  validates :email, presence: true, length: { maximum: 100 }, 
                    uniqueness: { case_sensitive: false },
                    format: { with: EMAIL_REGEX }

end