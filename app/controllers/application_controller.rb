class ApplicationController < ActionController::Base
    helper_method :current_user

    def current_user
        @user = User.find_by(session[:id]) if session[:user_id] != nil
    end

end
