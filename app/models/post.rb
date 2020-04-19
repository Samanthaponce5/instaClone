class Post < ApplicationRecord
    belongs_to :account
    has_many :comments, dependent: :destroy
    has_one_attached:image 

    scope :of_followed_accounts, -> (following_accounts) { where account_id: following_accounts }
end
