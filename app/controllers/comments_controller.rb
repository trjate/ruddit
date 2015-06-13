class CommentsController < ApplicationController

  def new
    @action = comments_new_path
    render :new
  end

  def create

    @comment = Comment.create(user_id: params[:user_id],
                        link_id: params[:link_id],
                        content: params[:content])
                        
    redirect_to comments_new_path
  end

  def all
    @user = User.all
  end

end
