# Print (in JSON format) all documents in a collection
require 'rubygems'
require 'mongo'
client = Mongo::Client.new('mongodb://127.0.0.1:27017/cmp341')
cursor = client[:users].find
cursor.each do |doc|
puts doc
end
