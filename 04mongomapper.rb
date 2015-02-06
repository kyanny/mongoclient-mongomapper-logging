require 'mongo_mapper'
require 'logger'
require_relative 'config'

logger = Logger.new(STDOUT)

puts "==> MongoMapper (enable logging)"

setup_config = make_setup_config(logger)
MongoMapper.setup(*setup_config)

class Dog
  include MongoMapper::Document
  key :name, String
end
Dog.create(name: 'John')
