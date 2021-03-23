class ApplicationController < ActionController::Base


    def current_user
        #this helper gives the name of the user who is logged in
        @current_user ||=User.find(session[:user_id]) if session[:user_id]#
    end
    
    
    def logged_in?
        #this helper will give the output as true or false
        #true-->user is logged in
        #false-->user is not logged in
        !!current_user#represents boolean


    
        
    end


    def require_user
        if !logged_in?
            redirect_to login_path
        end    

    end    


end
