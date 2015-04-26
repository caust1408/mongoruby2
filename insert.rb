# Insert a single record
require 'rubygems'
require 'mongo'
client = Mongo::Client.new('mongodb://127.0.0.1:27017/cmp341')
result = client[:users].insert_one({ username: 'Wally Cleaver' })
result.n
