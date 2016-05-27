class AccountsController < ApplicationController
  def index
    @accounts = Account.all
  end

  def show
    @account = Account.find(params[:id])
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new
    @account.username = params[:username]
    @account.password = params[:password]
    @account.firstname = params[:firstname]
    @account.lastname = params[:lastname]
    @account.email = params[:email]


    if @account.save
      redirect_to "/accounts", :notice => "Account created successfully."
    else
      render 'new'
    end
  end

  def edit
    @account = Account.find(params[:id])
  end

  def update
    @account = Account.find(params[:id])

    @account.username = params[:username]
    @account.password = params[:password]
    @account.firstname = params[:firstname]
    @account.lastname = params[:lastname]
    @account.email = params[:email]


    if @account.save
      redirect_to "/accounts", :notice => "Account updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @account = Account.find(params[:id])

    @account.destroy

    redirect_to "/accounts", :notice => "Account deleted."
  end
end
