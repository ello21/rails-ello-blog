module ApplicationHelper

    def admin
      session[:user_id] == "1"
    end

end
