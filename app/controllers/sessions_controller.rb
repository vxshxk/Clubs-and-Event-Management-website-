class SessionsController < ApplicationController
  def create
    auth = request.env['omniauth.auth']
    session[:user_id] = auth['uid']
    session[:token] = auth['credentials']['token']
    redirect_to root_path, notice: 'Signed in successfully!'
  end

  def failure
    redirect_to root_path, alert: 'Authentication failed, please try again.'
  end
end
