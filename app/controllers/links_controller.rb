class Linkscontroller < Applicationcontroller


def index
 @links = Link.all

end

def new
  render :new

end

def create
    @link = Link.create(title: params[:title],
                        destination: params[:url],
                        content: params[:content],
                        written_at: DateTime.now)
    redirect_to links_path

  end

def show
  @link = Link.find(params[:id])


end





end
