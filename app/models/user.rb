class User < ActiveRecord::Base
   validates :username, presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 25 }
   validates :firstname, presence: true
   validates :lastname, presence: true
   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
   validates :email, presence: true,
   uniqueness: { case_sensitive: false },
   format: { with: VALID_EMAIL_REGEX }
end