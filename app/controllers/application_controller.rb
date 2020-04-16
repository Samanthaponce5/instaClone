class ApplicationController < ActionController::Base
    helper_method :current_user 

    def current_user
        if session[:account_id]
            @current_user ||= Account.find_by(id:session[:account_id])
        else
            @current_user = nil
        end
    end
end
