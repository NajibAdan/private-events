module SessionsHelper
    def log_in(user)
        session[:user_id] = user.id
        current_user
    end
    def current_user
        if id = session[:user_id]
            @current_user ||= User.find(id)
        end
    end
    def logout
        session.delete(:user_id)
        @current_user = nil 
    end

end
