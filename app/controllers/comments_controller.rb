class CommentsController < ApplicationController

  def new
    @action = users_path
    render :new
  end

  def create
    passhash = Digest::SHA1.hexdigest(params[:password])
    @user = User.create(email: params[:email],
                          #username: params[:username],
                        password: passhash)

    flash[:notice] = "User successfully created. Welcome!"
    redirect_to :root
  end

  def all
    @user = User.all
  end

end
