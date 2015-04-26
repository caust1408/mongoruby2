# Insert a single record
require 'rubygems'
require 'mongo'
#client = Mongo::Client.new('mongodb://127.0.0.1:27017/cmp341')
Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'cmp341', :heartbeat_frequency => 600)

