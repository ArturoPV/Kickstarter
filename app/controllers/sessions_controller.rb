class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.where(email: params[:email]).first

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = 'Te has loggeado correctamente'
      redirect_to root_path
    else
      flash[:error] = 'Tu usuario o contraseña no son correctos'
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
   flash[:notice] = "Te has desloggeado correctamente"
   redirect_to root_path
  end
  
end
