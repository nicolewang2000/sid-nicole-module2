class ApplicationController < ActionController::Base

<<<<<<< HEAD
    # before_action: authenticated
=======
    helper_method :logged_in?
    helper_method :current_user
>>>>>>> 342e24386174f2e9aae33245c97a2696bede84de

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
