require 'mongo'
require 'logger'

logger = Logger.new(STDOUT)

puts "==> MongoClient (log level :info)"
conn = Mongo::MongoClient.new('127.0.0.1', 27017, logger: logger)
conn.logger.level = Logger::Severity::INFO # = 1
conn['test']['dogs'].insert({name: 'John'})
