class LinksController < ApplicationController


def index
 @links = Link.all
end

def new
  @action = links_path
  render :new
  # binding.pry
end

def create
    @link = Link.create(title: params[:title],
                        destination: params[:destination],
                        user_id: params[:user_id],
                        timestamps: DateTime.now)
    redirect_to link_transfer_path(@link)
end

def url_with_protocol
    /^http/i.match(@link.destination) ? @link.destination : "http://#{@link.destination}"
  end


def show
     @link = Link.find(params[:id])
     redirect_to url_with_protocol
end




end
