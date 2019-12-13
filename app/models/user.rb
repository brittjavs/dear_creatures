class User < ApplicationRecord
    has_many :donations
    has_many :shelters, through: :donations
    validates :email, :username, presence: true
    validates :email, :username, uniqueness: true
    has_secure_password
    
    def self.from_omniauth(auth)
        where(email: auth.info.email).first_or_initialize do |user|
          user.username = auth.info.name
          user.email = auth.info.email
          user.password = SecureRandom.hex
        end
      end

end
