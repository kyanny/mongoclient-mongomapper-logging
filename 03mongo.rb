require 'mongo'
require 'logger'

logger = Logger.new(STDOUT)
logger.level = Logger::Severity::INFO # = 1

puts "==> MongoClient (suppress logging)"
conn = Mongo::MongoClient.new('127.0.0.1', 27017, logger: logger)
conn['test']['dogs'].insert({name: 'John'})
