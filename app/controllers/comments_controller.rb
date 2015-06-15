class CommentsController < ApplicationController



def show
  @link = Link.find(params[:id])

  render :show
end



  def create

    @comment = Comment.create(user_id: params[:user_id],
                        link_id: params[:link_id],
                        content: params[:content])

    redirect_to comments_show_path
  end

  def all
    @user = User.all
  end

end
