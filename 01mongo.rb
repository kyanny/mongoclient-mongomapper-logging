require 'mongo'
require 'logger'

logger = Logger.new(STDOUT)

puts "==> MongoClient (full logging)"
conn = Mongo::MongoClient.new('127.0.0.1', 27017, logger: logger)
conn['test']['dogs'].insert({name: 'John'})
