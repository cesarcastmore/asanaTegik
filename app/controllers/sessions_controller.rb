class SessionsController < ApplicationController

  def new
  end

  def create
    auth = request.env['omniauth.auth']
    session[:auth] = auth.credentials
    session[:uid] = auth.uid
    session[:user] = auth.info
    if session[:auth]
      render :text => " Welcome, #{session[:user][:name]}!
      Your token is #{session[:auth].token}, your id is #{session[:uid]}
      <a href='/logout'>Logout</a>"
      else
        render :text => "Hi ! You've signed up without signed in asana."
        end
  end

  def failure
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
    end

end
