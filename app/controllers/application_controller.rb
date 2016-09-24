class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  class ApplicationController < ActionController::Base
    rescue_from CanCan::AccessDenied do |exception|
      redirect_to root_url, :alert => exception.message
    end
  end
end
