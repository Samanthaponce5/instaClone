module AccountsHelper
    def current_user_is_following(current_account_id, followed_account_id)
        relationship = Follow.find_by(follower_id: current_account_id, following_id: followed_account_id)
        return true if relationship
      end
end
