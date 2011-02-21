class Booksiebot < Sinatra::Base
  set :haml, { :format => :html5 }

  get '/' do
    haml :index
  end
end
