require 'sinatra'
require 'sinatra/sequel'

configure :development do
  set :database, 'sqlite://db/booksiebot-development.db'
end

migration "create book_requests table" do
  database.create_table :book_requests do
    primary_key :id
    string      :title
    timestamp   :created_at, :null => false
  end
end

