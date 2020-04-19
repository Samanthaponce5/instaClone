class Account < ApplicationRecord
has_secure_password

    has_many :posts, dependent: :destroy
    has_many :comments

    has_many :follower_relationships, foreign_key: :following_id, class_name: 'Follow'
    has_many :followers, through: :follower_relationships, source: :follower
  
    has_many :following_relationships, foreign_key: :follower_id, class_name: 'Follow'
    has_many :following, through: :following_relationships, source: :following



     has_one_attached:image
    
    validates :username, presence: true, uniqueness: true


    def follow(account_id)
        following_relationships.create(following_id: account_id)
      end
    
      def unfollow(account_id)
        following_relationships.find_by(following_id: account_id).destroy
      end
   
end
