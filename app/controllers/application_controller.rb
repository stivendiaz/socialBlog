class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def private_access
    redirect_to :new_user_session unless user_signed_in?
  end
end
