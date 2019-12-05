class User < ApplicationRecord
    has_many :donations
    has many :shelters through: :donations
    has_secure_password
end
