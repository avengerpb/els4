class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  private
  def logged_in_user
    if current_user.nil?
      flash[:danger] = t("lesson.danger")
      redirect_to login_url
    end
  end
end
