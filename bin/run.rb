require_relative '../config/environment'

require 'pry'


cli = CommandLineInterface.new
cli.greet

puts Personality.least_common_personality
puts Personality.most_common_personality

