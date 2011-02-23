class Booksiebot < Sinatra::Base
  set :haml, { :format => :html5 }
  enable :sessions
  use Rack::Flash

  get '/' do
    @requests = BookRequest.all
    haml :index
  end

  post '/book_requests' do
    request = BookRequest.create(params[:book_request])
    if request.save
      flash[:notice] = "Request submitted"
      redirect '/'
    else
      raise "WHOOPS"
    end
  end
end
