class SessionsController < ApplicationController
  skip_before_action :authenticate, :authenticate_admin



  def create
    @account = Account.find_by(email: params[:email])
    if @account.present?
      if @account.authenticate(params[:password])
        session[:account_id] = @account.id
        redirect_to root_url, notice: "You're now logged in!"
      else
        redirect_to root_url, alert: "Invalid Password"
      end
    else
      redirect_to root_url, alert: "Nobody with that email address"
    end
  end


  def destroy
     session.delete(:account_id)
     @current_account = nil
     redirect_to root_url, notice: 'You have signed out!'
  end

end
