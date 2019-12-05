class User < ApplicationRecord
    has_many :donations
    has_many :shelters, through: :donations
    has_secure_password
    validates :email, :username, presence: true
    validates :email, :username, uniqueness: true

end
