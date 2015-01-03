class AccountsController < ApplicationController

  before_action :authenticate_account!

  # GET /users
  # GET /users.json
  def index
    @accounts = Account.all
  end

  def show

  end


end
