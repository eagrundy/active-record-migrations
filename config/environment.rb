require 'rake'
require 'active_record'
require 'yaml/store'
require 'ostruct'
require 'date'


require 'bundler/setup'
Bundler.require


# put the code to connect to the database here
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/artists.sqlite"
)

require_relative "../artist.rb"

# The environment.rb file commonly contains things we want to > read and make available to our Ruby application when it starts. It isn't > necessary that you totally grasp all the parts of this file, but looking through > it with this in mind, you might be able to gather what is happening: some gems, > including active_record are required; something happens with Bundler; our > database connection is established; the artist.rb file is read.