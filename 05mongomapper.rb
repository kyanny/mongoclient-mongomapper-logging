require 'mongo_mapper'
require 'logger'
require_relative 'config'

logger = Logger.new(STDOUT)

puts "==> MongoMapper (log level :info)"

setup_config = make_setup_config(logger)
MongoMapper.setup(*setup_config)

MongoMapper.connection.logger.level = Logger::Severity::INFO # = 1

class Dog
  include MongoMapper::Document
  key :name, String
end
Dog.create(name: 'John')
