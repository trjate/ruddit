class CommentsController < ApplicationController



def show
  @link = Link.find(params[:id])

  render :show
end



  def create
      @link = Link.find(params[:id])
      @comment = Comment.create(
                          link_id: @link.id,
                          content: params[:content])
    redirect_to comments_show_path
  end



end


### < 