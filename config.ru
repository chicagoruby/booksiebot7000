require 'bundler'

Bundler.require

require './booksiebot'
Dir["./lib/**/*.rb"].each { |f| require f }
Dir["./app/**/*.rb"].each { |f| require f }

run Booksiebot
