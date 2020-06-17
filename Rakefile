require_relative 'config/environment'
require 'sinatra/activerecord/rake'

desc 'starts a console'
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end

ENV["PLAYLISTER_ENV"] ||= "development"


# Type `rake -T` on your command line to see the available rake tasks.
