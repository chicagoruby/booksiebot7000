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

  get '/email' do
    haml :email
  end

  post '/reminder' do 
    Pony.mail(:to => params[:to], 
      :from => 'booksiebot@gmail.com', 
      :subject => params[:subject], 
      :body => params[:body], 
      :via => :smtp, :via_options => {
      :address              => 'smtp.gmail.com',
      :port                 => '587',
      :enable_starttls_auto => true,
      :user_name            => 'booksiebot',
      :password             => 'booksie7',
      :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
      :domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
    })

    haml :confirmation
  end

end
