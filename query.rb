# Query for users older than 20
require 'rubygems'
require 'mongo'
client = Mongo::Client.new('mongodb://127.0.0.1:27017/cmp341')
#cursor = client[:numbers].find('num' =>  {'$gt' =>  199995} )
cursor = client[:users].find('age' =>  {'$gt' =>  20} )
cursor.each do |doc|
print doc["last_name"],' : ', doc['age']
#puts doc["num"]
puts
end
