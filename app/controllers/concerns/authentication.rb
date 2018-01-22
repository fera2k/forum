module Authentication
    extend ActiveSupport::Concern
  
    included do
      #before_action :authenticate_user!
  
      private
  
      def authenticate_user!
        unless user_signed_in?
          session[:user_return_to] = request.referrer
          flash[:alert] = t('messages.user.please_start_session')
          redirect_to new_user_session_url
        end
  
      end
  
    end
  end
  