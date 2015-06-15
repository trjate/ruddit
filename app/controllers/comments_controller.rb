class CommentsController < ApplicationController



def show
  @link = Link.find(params[:id])
  @comment = Comment.find(params[:id],
                          params[:content])
                          #params[:user_id])
  #You can pull up one comment through ^

  render :show
end



  def create

    @comment = Comment.create(user_id: params[:user_id],
                        link_id: params[:link_id],
                        content: params[:content])

    redirect_to comments_show_path
  end



end
