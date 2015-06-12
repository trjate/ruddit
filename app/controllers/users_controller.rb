class UsersController < ApplicationController

  def new
    @action = users_path
    render :new
  end

  def create

    @users = Users.create(email: params[:email],
                        password:      )




    flash[:notice] = "User successfully created. Welcome!"
    redirect_to :root
  end

  def all
    @users = Users.all
  end

end
