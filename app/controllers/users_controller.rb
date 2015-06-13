class UsersController < ApplicationController

  def new
    @action = users_path
    render :new
  end

  def create
    passhash = Digest::SHA1.hexdigest(params[:password])
    @users = Users.create(email: params[:email],
                          #username: params[:username],
                        password: passhash)

    flash[:notice] = "User successfully created. Welcome!"
    redirect_to :root
  end

  def all
    @users = Users.all
  end

end
