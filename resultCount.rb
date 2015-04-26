# Count the number of documents in a collection
require 'rubygems'
require 'mongo'
client = Mongo::Client.new('mongodb://127.0.0.1:27017/cmp341')
p client[:numbers].find.count
#p client[:users].find.count
