class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def all
    user = User.from_omniauth(request.env["omniauth.auth"])
    if user.persisted?
      flash.notice = "#{user.email}, you are signed in!"
      sign_in_and_redirect user
    else
      flash[:alert] = "You are not authorized."
      redirect_to root_path
    end
  end
  alias_method :github, :all
end
