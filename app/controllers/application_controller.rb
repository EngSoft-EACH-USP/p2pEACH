class ApplicationController < ActionController::Base
    helper_method :current_user
    def current_user
      if session[:usuario_id]
        @current_user ||= Usuario.find(session[:usuario_id])
      else
        @current_user = nil
      end
    end
  end