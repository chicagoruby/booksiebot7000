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

  get '/report' do
    @books_to_be_reviewed = BookRequest.where(:reviewed => 'f')
    @books_waiting_to_sent_to_publisher = BookRequest.where(:reviewed => 't', :sent_to_publisher => 'f')
    haml :report
  end
end
