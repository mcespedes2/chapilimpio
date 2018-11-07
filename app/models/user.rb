class User < ApplicationRecord

    has_secure_password
    
    has_many :trashs
    
    has_many :points
    
end
