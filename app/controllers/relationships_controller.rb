class RelationshipsController < ApplicationController
  def follow_account
    @account = Account.find_by!(username: params[:username])
    if current_user.follow @account.id
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    end
  end

  def unfollow_account
    @account = Account.find_by!(username: params[:username])
    if current_user.unfollow @account.id
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    end
  end
end
