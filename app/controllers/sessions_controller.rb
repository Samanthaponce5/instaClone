class SessionsController < ApplicationController
  def new
  end

  def create
    @account = Account.find_by_username(params[:username])
    if @account && @account.authenticate(params[:password])
      session[:account_id] = @account.id
      redirect_to accounts_path
    else
      flash.now[:alert] = 'Username or password is invalid'
      render 'new'
    end
  end

  def destroy
    session[:account_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end
