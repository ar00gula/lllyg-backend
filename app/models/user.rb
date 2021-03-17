class User < ApplicationRecord
    has_secure_password
    has_secure_token :remember_token, length: 36
    
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :username, length: { minimum: 4 }
    validates :email, presence: true
    validates :email, uniqueness: true
        
end
