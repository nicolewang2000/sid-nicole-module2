class ApplicationController < ActionController::Base

    helper_method :logged_in?
    helper_method :current_user

    def current_user
        if session[:user_id]
            @user = User.find(session[:user_id])
        end
    end

    def logged_in?
        !!current_user
    end 

    def authenticated
        redirect_to "/login" unless logged_in?
    end

    # def authenticated
    #     if session[:user_id]
    #         current_user = User.find(session[:user_id])
    #     end
    #     redirect_to "/login" unless current_user
    # end
end
