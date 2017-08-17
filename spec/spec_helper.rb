require 'nokogiri'

RSpec.configure do |config| #Setting up the configuration
  config.formatter = :documentation #Prints the docstrings passed to describe and it methods (and their aliases).
end  