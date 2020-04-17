class Account < ApplicationRecord
    has_many :posts
    has_secure_password
    validates :username, presence: true, uniqueness: true
    has_one_attached:image
end
