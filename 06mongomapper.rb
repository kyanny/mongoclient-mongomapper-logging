require 'mongo_mapper'
require 'logger'
require_relative 'config'

logger = Logger.new(STDOUT)
logger.level = Logger::Severity::INFO # = 1

puts "==> MongoMapper (suppress logging)"

setup_config = make_setup_config(logger)
MongoMapper.setup(*setup_config)

class Dog
  include MongoMapper::Document
  key :name, String
end
Dog.create(name: 'John')


# Or, just don't pass logger instance to MM.setup.
#
# NOTE: I don't recommend this way because once you initialized MongoMapper connection, you no longer set logger.

setup_config = make_setup_config
MongoMapper.setup(*setup_config)

class Dog
  include MongoMapper::Document
  key :name, String
end
Dog.create(name: 'John')
